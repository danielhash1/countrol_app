class Goal < ApplicationRecord
  has_many :wallet_goals
  has_many :wallets, through: :wallet_goals
  validates :title, :amount, :date, presence: true
end
