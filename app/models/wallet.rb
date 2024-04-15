class Wallet < ApplicationRecord
  belongs_to :user
  has_many :wallet_goals, dependent: :destroy
  has_many :goals, through: :wallet_goals
  has_many :transactions
end
