class RenameColumnTypeInTableEntriesToBalanceType < ActiveRecord::Migration
  def change
    rename_column :entries, :type, :balance_type
  end
end
