class Blockchain
  GAS_PRICE = 200_000_000_000
  GAS_LIMIT = 400_000
  ACCOUNTS_LIMIT = 100
  PROPOSALS_LIMIT = 100

  def initialize
    @client = Ethereum::HttpClient.new(Settings.ethereum_node)
    @formatter = Ethereum::Formatter.new

    contract_json = JSON.parse(File.read('app/blockchain/contracts/voting.json'))

    contract_address = contract_json['address']
    contract_abi = contract_json['abi']

    @contract_instance = Ethereum::Contract.create(name: 'Voting', address: contract_address,
                                                   abi: contract_abi, client: @client)
    @contract_instance.gas_price = GAS_PRICE
    @contract_instance.gas_limit = GAS_LIMIT
  end

  def self.new_account
    new_key = Eth::Key.new
    [new_key.address.downcase, new_key.private_hex]
  end

  def validate_vote(address, contract_poll_id)
    @contract_instance.call.validate_vote(address, contract_poll_id)
  end

  def get_poll(voter, contract_poll_id)
    @contract_instance.call.get_poll(voter, contract_poll_id)
  end

  def contract_balance
    balance(@contract_instance.address)
  end

  def balance(address)
    wei_amount = @client.eth_get_balance(address)['result'].to_i(16)
    @formatter.from_wei(wei_amount)
  end

  def accounts
    count = @contract_instance.call.num_members
    to = count
    from = count > ACCOUNTS_LIMIT ? count - ACCOUNTS_LIMIT + 1 : 1

    (from..to).map do |idx|
      account = @contract_instance.call.members(idx)
      address = "0x#{account}"
      Account.new(address, balance(address))
    end
  end

  def create_poll(id, text, starts_at, ends_at, documents, options = {})
    tx = signed_transactions(options[:private_key]) do |contract_instance|
      contract_instance.transact.create_poll(id, text, starts_at, ends_at, documents)
    end

    tx.id
  end

  def vote(contract_poll_id, voter, supports, options = {})
    tx = signed_transactions(options[:private_key]) do |contract_instance|
      contract_instance.transact.vote(contract_poll_id, voter, supports)
    end

    tx.id
  end

  def transaction_status(tx_hash)
    tx = @client.eth_get_transaction_by_hash(tx_hash)['result']
    tx_receipt = @client.eth_get_transaction_receipt(tx_hash)['result']
    if tx_receipt
      block_number = tx_receipt['blockNumber']

      gas_used = tx_receipt['gasUsed'].to_i(16)
      gas = tx['gas'].to_i(16)

      {
        succeeded: block_number && gas_used < gas,
        failed: block_number && gas_used == gas
      }
    end
  end

  private

  def signed_transactions(private_key_hex)
    key = Eth::Key.new priv: private_key_hex
    @contract_instance.key = key
    res = yield(@contract_instance)
    @contract_instance.key = nil
    res
  end
end
