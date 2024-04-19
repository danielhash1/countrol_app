class Goal < ApplicationRecord
  has_many :wallet_goals
  has_many :wallets, through: :wallet_goals
  validates :title, :amount, :date, presence: true
  has_many :wallet_goals, dependent: :destroy

  has_many :transactions, dependent: :destroy

  def goal_balance
    @transactions_sum = Transaction.where(goal_id: id).sum(:amount)
    amount - @transactions_sum
  end
end
