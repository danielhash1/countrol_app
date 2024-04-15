class TransactionsController < ApplicationController
def index
  @transactions = Transaction.all
end

def show
  @transaction = Transaction.find(params[:id])
end
def new
  # @goal = Goal.find(params[:goal_id])
  @transaction = Transaction.new
end

def create
  @transaction = Transaction.new(transaction_params)
  @goal = Goal.find(params[:goal_id])
  @transaction.goal = @goal
  # @transaction.category = params[:category]
  @wallet = @goal.wallets.where(user: current_user).first
  @transaction.wallet = @wallet

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
    @transaction.update(transaction_params)
    redirect_to transaction_path(@transaction)
  end
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to transactions_path
  end
private

  def transaction_params
    params.require(:transaction).permit(:title, :description, :date, :amount)
  end

end
