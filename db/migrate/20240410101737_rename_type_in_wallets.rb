class RenameTypeInWallets < ActiveRecord::Migration[7.1]
  def change
    rename_column :wallets, :type, :name
    rename_column :transactions, :type, :name
  end
end
