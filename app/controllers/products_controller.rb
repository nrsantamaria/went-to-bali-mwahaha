class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @product = Product.where.not(name: '')
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Great! A new product has been added."
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "That product has been deleted."
      respond_to do |format|
        format.html { redirect_to '/' }
        format.js
      end
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
