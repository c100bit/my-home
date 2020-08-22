class AddTypeToPolls < ActiveRecord::Migration[6.0]
  def change
    add_column :polls, :type, :string
  end
end
