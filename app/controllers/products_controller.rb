class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @reviews = @product.reviews
    @review = Review.new()
  end

  def new
    @product = Product.new()
  end

  def create
    @product = Product.new(product_params)
   if @product.save
     flash[:notice] = "You have successfully created a new product!"
     redirect_to product_path(@product.id)
   else
     render :new
   end
  end

  def edit
  end

  def update
    @product.update(product_params)
    if @product.save
      flash[:notice] = "You have successfully edited the product!"
      redirect_to product_path(params[:id])
    else
      render :edit
    end
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end

  def destroy
    @product.destroy
    flash[:notice] = "You have successfully deleted the product!"
    redirect_to products_path
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
