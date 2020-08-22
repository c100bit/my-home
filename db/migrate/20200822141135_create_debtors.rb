class CreateDebtors < ActiveRecord::Migration[6.0]
  def change
    create_table :debtors do |t|
      t.references :user, null: false, foreign_key: true
      t.float :sum

      t.timestamps
    end
  end
end
