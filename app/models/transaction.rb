class Transaction < ApplicationRecord
  belongs_to :wallet
  belongs_to :category
  belongs_to :goal, optional: true

  enum transaction_type: [:income, :expense]
end
