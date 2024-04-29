class Category < ApplicationRecord
  has_many :transactions

  def formatted_to_currency(param)
    ActionController::Base.helpers.number_to_currency(param)
  end

end
