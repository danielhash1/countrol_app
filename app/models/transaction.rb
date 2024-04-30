class Transaction < ApplicationRecord
  belongs_to :wallet
  belongs_to :category
  belongs_to :goal, optional: true

  validates :amount, presence: true

  enum transaction_type: [:income, :expense]

  def formatted_to_currency(param)
    ActionController::Base.helpers.number_to_currency(param)
  end

  def formatted_amount
    formatted_to_currency(amount)
  end

  def signed_amount
    expense? ? -amount : amount
  end
end
