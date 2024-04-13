class WalletsController < ApplicationController
  def index
    @wallets = current_user.wallets

   # @selected_wallet = Wallet.find(params[:wallet_id]) if params[:wallet_id]
  end

  def show
    @wallet = current_user.wallets.where(name: "Main").first
    @transactions = @wallet.transactions
    if params[:id]
      @wallet = Wallet.find(params[:id])
    end
    @wallets = current_user.wallets
  end

  def new
    @wallet = Wallet.new

  end

  def create
    @wallet = current_user.wallets.new(wallet_params)


    if @wallet.save
      flash[:notice] = "Wallet was successfully created."
      redirect_to wallets_path
    else
      flash[:alert] = "Failed to create wallet."
      render :new
    end
  end

  private

  def wallet_params
    params.require(:wallet).permit(:name)
  end
end
