class AddBlockchainAddressAndKeyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :blockchain_address, :string
    add_column :users, :blockchain_key, :string
  end
end
