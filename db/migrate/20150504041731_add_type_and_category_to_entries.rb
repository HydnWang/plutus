class AddTypeAndCategoryToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :type, :string
    add_column :entries, :category, :string
  end
end
