class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :title
      t.integer :kind
      t.references :uk
      t.string :address
      t.integer :entrance_count
      t.float :total_area
      t.float :common_area
      t.float :budjet
      t.references :admin

      t.timestamps
    end
    add_foreign_key :houses, :users, column: :admin_id
    add_foreign_key :houses, :users, column: :uk_id
  end
end
