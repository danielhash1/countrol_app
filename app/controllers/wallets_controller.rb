class WalletsController < ApplicationController

  def index
    @wallets =  current_user.wallets

   # @selected_wallet = Wallet.find(params[:wallet_id]) if params[:wallet_id]
  end

  def show
    @wallet = current_user.wallets.where(name: "Main").first
    if params[:id]
      @wallet = Wallet.find(params[:id])
    end
    @wallets = current_user.wallets
  end
end
