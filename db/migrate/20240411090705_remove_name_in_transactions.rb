class RemoveNameInTransactions < ActiveRecord::Migration[7.1]
  def change
    remove_column :transactions, :name
  end
end
