class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @transactions = Transaction.where(wallet: @wallet, category: @category)
    @wallet = Wallet.find(params[:wallet_id])
  end

  def show
    @category = Category.find(params[:id])
    @wallet = Wallet.find(params[:wallet_id])
    @transactions = Transaction.where(wallet: @wallet, category: @category).order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @category = Category.find(params[:id])
  # end

  # def update
  #   @category = Category.find(params[:id])
  #   @category.update(category_params)
  #   redirect_to category_path(@category)
  # end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
