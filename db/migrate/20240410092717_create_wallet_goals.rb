class CreateWalletGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :wallet_goals do |t|
      t.references :goal, null: false, foreign_key: true
      t.references :wallet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
