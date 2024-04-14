class AddBalanceToWallets < ActiveRecord::Migration[7.1]
  def change
    add_column :wallets, :balance, :decimal
  end
end
