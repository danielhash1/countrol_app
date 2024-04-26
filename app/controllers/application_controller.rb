class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    wallet_id = current_user.wallets.first.id
    if wallet_id
      wallet_path(wallet_id)
    else
      root_path
    end

  end
end
