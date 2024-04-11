class Goal < ApplicationRecord
  has_many :wallet_goals
  has_many :wallets, through: :wallet_goals
end
