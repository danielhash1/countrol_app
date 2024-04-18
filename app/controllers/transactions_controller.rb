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
  @wallet = Wallet.find(params[:wallet_id])
  @transaction = Transaction.find(params[:id])
  @wallet = Wallet.find(params[:wallet_id])

end

  def new
    @wallet = Wallet.find(params[:wallet_id])
    @transaction = @wallet.transactions.build
    @transaction.transaction_type = params[:transaction_type]
    @transaction = Transaction.new
    @goal = Goal.find(params[:goal_id]) if params[:goal_id].present?
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @wallet = Wallet.find(params[:wallet_id])
    @transaction.category_id = params[:transaction][:category_id]
    @transaction.goal_id = params[:transaction][:goal_id]
    @transaction.wallet = @wallet
    @transaction.transaction_type = params[:transaction][:transaction_type]
    # @wallet = @goal.wallets.where(user: current_user).first
    # @goal = @wallet.goals.where(user: current_user).first
    # @transaction.goal = @goal

    # if @transaction.transaction_type == 'expense' && params[:transaction][:goal_id].present?
    #   @goal = Goal.find(params[:transaction][:goal_id])
    #   @goal.update(amount: @goal.amount - @transaction.amount)
    #   redirect_to wallet_goal_path(@wallet, @goal) and return if @goal.save
    # end

    if @transaction.save
      redirect_to wallet_path(@wallet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @wallet = Wallet.find(params[:wallet_id])
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
    params.require(:transaction).permit(:title, :description, :date, :amount, :category_id, :transaction_type, :goal_id)
  end
end
