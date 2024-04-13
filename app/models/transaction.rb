class Transaction < ApplicationRecord
  belongs_to :goal
  belongs_to :wallet
  belongs_to :category
  
  enum transaction_type: [:income, :expense]
end
