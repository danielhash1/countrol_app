class Goal < ApplicationRecord
  after_create :current_month_progress

  has_many :wallet_goals
  has_many :wallets, through: :wallet_goals
  validates :title, :amount, :date, presence: true
  has_many :wallet_goals, dependent: :destroy

  has_many :transactions, dependent: :destroy
  require 'date'

  def current_month_progress
    @total_months = ((date.year - created_at.to_date.year) * 12) + (date.month - created_at.to_date.month )
    @current_total_months = ((Date.today.year - created_at.to_date.year) * 12) + Date.today.month - created_at.to_date.month
    @remaining_months = @total_months - @current_total_months
    @months_past = @current_total_months
    { months_past: @months_past, total_months: @total_months, remaining_months: @remaining_months }
  end

  def goal_balance
    @transactions_sum = Transaction.where(goal_id: id).sum(:amount)
    amount - @transactions_sum
  end
end
