class Transaction < ApplicationRecord
  belongs_to :goal
  belongs_to :wallet
  belongs_to :category
end
