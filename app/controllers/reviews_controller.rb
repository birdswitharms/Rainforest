class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id]) # finds product
    @reviews = @product.reviews # has all product's reviews
    @review = Review.new() # create empty review object before saving to db
    @review.message = params[:review][:message] # sends params review hash (hash inside a hash) to the .message method
    @review.product = @product # sends product object to reivew .product method (product_id)
   if @review.save
     flash[:notice] = "You have successfully created a new review!"
     redirect_to products_path
   else
     render "products/show"
   end
  end

  def edit

  end

end
