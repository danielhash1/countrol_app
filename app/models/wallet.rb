class Wallet < ApplicationRecord
  belongs_to :user
  has_many :wallet_goals, dependent: :destroy
  has_many :goals, through: :wallet_goals
  has_many :transactions

  def formatted_to_currency(param)
    ActionController::Base.helpers.number_to_currency(param)
  end

  def balance
    income = transactions.where(transaction_type: 'income').sum(:amount)
    formatted_to_currency(income)
    expense = transactions.where(transaction_type: 'expense').sum(:amount)
    formatted_to_currency(expense)
    total_balance = income - expense
    formatted_to_currency(total_balance)
  end

  def balance_income
    income = transactions.where(transaction_type: 'income').sum(:amount)
    formatted_to_currency(income)
  end

  def balance_expense
    expense = transactions.where(transaction_type: 'expense').sum(:amount)
    formatted_to_currency(expense)
  end
end
