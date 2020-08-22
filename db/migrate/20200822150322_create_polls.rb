class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.text :text
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
