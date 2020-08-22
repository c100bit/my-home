class CreatePages < ActiveRecord::Migration[6.0]

  def change
    create_table :pages do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.text :text, null: false

      t.timestamps
    end
  end

end
