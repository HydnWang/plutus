class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.float :amount
      t.string :item
      t.text :description

      t.timestamps null: false
    end
  end
end
