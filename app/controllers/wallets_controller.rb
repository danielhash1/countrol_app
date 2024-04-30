class WalletsController < ApplicationController
  before_action :set_wallets, only: [:show, :edit, :update, :destroy]
  def index
    @wallets = current_user.wallets
    @wallet = Wallet.find(params[:id])
  end

  def show
    @wallet = Wallet.find(params[:id])
    @wallets = current_user.wallets
    @transactions = Transaction.where(wallet: @wallet)
    @transactions_for_chart = @transactions.group_by_day(:date).sum(:amount)
    @transactions = Transaction.where(wallet: @wallet).order(date: :desc)

  end

  def new
    @wallet = Wallet.new
    @wallets = current_user.wallets
  end

  def create
    @wallet = Wallet.new(wallet_params)
    @wallet.user = current_user

    goal = Goal.create(title: 'Main', amount: 0, date: Date.today, completed: false)
    WalletGoal.create(wallet: @wallet, goal: goal)

    if @wallet.save
      flash[:notice] = "Wallet was successfully created."
      redirect_to wallet_path(@wallet)
    else
      flash[:alert] = "Failed to create wallet."
      render :new
    end
  end

  def edit
    @wallet = Wallet.find(params[:id])
  end

  def update
    @wallet = Wallet.find(params[:id])
    if @wallet.update(wallet_params)
      flash[:notice] = "Wallet was successfully updated."
      redirect_to wallets_path
    else
      flash[:alert] = "Failed to update wallet."
      render :edit
    end
  end

  def destroy
    @wallet = Wallet.find(params[:id])
    @wallet.destroy
    flash[:notice] = "Wallet was successfully destroyed."
    redirect_to wallets_path
  end

  private

  def set_wallets
    @wallets = current_user.wallets
  end

  def wallet_params
    params.require(:wallet).permit(:name)
  end
end
