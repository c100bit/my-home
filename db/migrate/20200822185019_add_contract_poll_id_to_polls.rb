class AddContractPollIdToPolls < ActiveRecord::Migration[6.0]
  def change
    add_column :polls, :contract_poll_id, :bigint
  end
end
