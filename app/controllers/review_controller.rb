class ReviewController < ApplicationController

  def show
  	@review = Review.find(params[:id])
  end

  def create
  	@review = @product.reviews.build(review_params)
  	@review.user_id = cureent_user.id

  	if @review.save
  		redirect_to @products_path, notice: => "Review created successfully"
  	else
  		render 'products/show'
  	end
  end

  def destroy
  	 @review = Review.find(params[:id])
  	 @review.destroy
  end

  private

  def review_params
  	params.require(:comment).permit(:product_id, :comment)
  end

  def load_product
  	@product = Product.find(params[:product_id])
  end

end








