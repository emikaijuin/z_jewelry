class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  def index
    @products ||= Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: "Product has been added."
    else
      render :new, error: "There was an issue adding your product. Error cause: #{@product.errors.full_messages}"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Product has been updated."
    else
      render :edit, error: "There was an error editing your product. Error cause: #{@product.errors.full_messages}"
    end
  end

  def destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :description,
      :quantity
    )
  end
end
