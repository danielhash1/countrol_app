class Wallet < ApplicationRecord
  belongs_to :user
  has_many :wallet_goals, dependent: :destroy
  has_many :goals, through: :wallet_goals
  has_many :transactions

  def balance
    income = transactions.where(transaction_type: 'income').sum(:amount)
    expense = transactions.where(transaction_type: 'expense').sum(:amount)
    income - expense
  end
end
