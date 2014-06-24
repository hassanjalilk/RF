class ProductsController < ApplicationController

  before_filter :ensure_logged_in, :only => [:create]

  def index
  	@products = Product.all
  end

  def show
     @product = Product.find(params[:id])

    if current_user
      @review = @product.reviews.build
    end
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.new(product_params)

  	if @product.save
  	redirect_to products_path(@products)
  	else
  	render :new
  	end
  end 

  def update
  	@product = Product.find(params[:id])

  	@product.update_attributes(product_params)
  	redirect_to product_path(@product)

  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.delete
  	redirect_to products_path
  end

    private
  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents, :url)
  end
end







