class RemoveItemFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :item, :string
  end
end
