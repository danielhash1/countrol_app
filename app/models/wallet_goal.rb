class WalletGoal < ApplicationRecord
  belongs_to :goal
  belongs_to :wallet
end
