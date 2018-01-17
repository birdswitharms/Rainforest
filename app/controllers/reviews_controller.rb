class ReviewsController < ApplicationController

  before_action :set_product_and_review, only: [:edit, :update]

  def create
    @product = Product.find(params[:product_id]) # finds product
    @reviews = @product.reviews # has all product's reviews
    @review = Review.new() # create empty review object before saving to db
    @review.message = params[:review][:message] # sends params review hash (hash inside a hash) to the .message method
    @review.product = @product # sends product object to reivew .product method (product_id)
   if @review.save
     flash[:notice] = "You have successfully created a new review!"
     redirect_to product_path(params[:product_id])
   else
     render "products/show"
   end
  end

  def edit
  end

  def update
    @review.message = params[:review][:message]
    if @review.save
      flash[:notice] = "You have successfully edited the review!"
      redirect_to product_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "You have successfully deleted the review!"
    redirect_to product_path(params[:product_id])
  end

  def set_product_and_review
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end
end
