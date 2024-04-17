class TransactionsController < ApplicationController
def index
  @wallet = Wallet.find(params[:wallet_id])
  @transactions = Transaction.where(wallet: @wallet)
  if params[:filter] == "expense"
    @transactions = @transactions.where(transaction_type: 1)
  elsif params[:filter] == "income"
    @transactions = @transactions.where(transaction_type: 0)
  end
end

def show
  # @wallet = Wallet.find(params[:wallet_id])
  @transaction = Transaction.find(params[:id])
end

def new
  @wallet = Wallet.find(params[:wallet_id])
  @transaction = Transaction.new
end

def create
  @transaction = Transaction.new(transaction_params)
  @transaction.category_id = params[:transaction][:category_id]

  @wallet = Wallet.find(params[:wallet_id])
  @transaction.wallet = @wallet

  # @wallet = @goal.wallets.where(user: current_user).first
  # @goal = @wallet.goals.where(user: current_user).first
  # @transaction.goal = @goal

  if @transaction.save
    redirect_to transaction_path(@transaction)
  else
    render :new, status: :unprocessable_entity
  end
end



  def edit
    @transaction = Transaction.find(params[:id])
  end
  def update
    @transaction = Transaction.find(params[:id])
    @transaction.category_id = params[:transaction][:category]
    @transaction.update(transaction_params)
    redirect_to transaction_path(@transaction)

  end
  def destroy
    @transaction = Transaction.find(params[:id])
    @wallet = @transaction.wallet
    @transaction.destroy
    redirect_to wallet_transactions_path(@wallet)
  end
private

  def transaction_params
    params.require(:transaction).permit(:title, :description, :date, :amount, :category_id)
  end

end
