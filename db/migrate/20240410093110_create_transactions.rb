class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.references :goal, null: false, foreign_key: true
      t.references :wallet, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.float :amount
      t.date :date
      t.string :type

      t.timestamps
    end
  end
end
