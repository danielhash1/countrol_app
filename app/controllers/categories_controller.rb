class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @wallet = Wallet.find(params[:wallet_id])
    @transactions = Transaction.where(wallet: @wallet, category: @category)

    # For Chartkick
   @transactions_by_category = Transaction.where(wallet: @wallet).group(:category_id).sum(:amount)
   @categories_for_chart = Category.all.map { |category| [category.name, @transactions_by_category[category.id]] }
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
