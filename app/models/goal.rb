class Goal < ApplicationRecord
  validates :title, :amount, :date, presence: true
end
