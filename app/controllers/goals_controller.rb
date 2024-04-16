class GoalsController < ApplicationController
  def index
    @goals = Goal.all
    @wallet = Wallet.find(params[:wallet_id])
    # @user_goals = Goal.joins(:wallet_goals).where(wallet_goals: { wallet_id: @wallet.id })
    @user_goals = @wallet.goals
  end

  def show
    @goal = Goal.find(params[:id])
    @wallet = Wallet.find(params[:wallet_id])
  end

  def new
    @goal = Goal.new
    @wallet = Wallet.find(params[:wallet_id])
  end

  def create
    @goal = Goal.new(goal_params)
    @wallet = Wallet.find(params[:wallet_id])


    if @goal.save
      @wallet.goals << @goal


      redirect_to wallet_goals_path(@wallet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)

    redirect_to wallet_goal_path(@goal)
  end

  def destroy
    @wallet = Wallet.find(params[:wallet_id])
    @goal = Goal.find(params[:id])
    @goal.destroy

    redirect_to wallet_goals_path(@wallet)
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :amount, :date, :wallet_id)
  end
end
