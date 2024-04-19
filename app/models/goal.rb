class Goal < ApplicationRecord
  has_many :wallet_goals
  has_many :wallets, through: :wallet_goals
  validates :title, :amount, :date, presence: true
  has_many :wallet_goals, dependent: :destroy

  has_many :transactions, dependent: :destroy

  def goal_balance
    amount - transactions.sum(:amount)
  end
end
