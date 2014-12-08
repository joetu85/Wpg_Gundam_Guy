class FinderController < ApplicationController
  def index
    @products = Product.order("product_name").page(params[:page]).per(6)
    @pages = Page.all
    @categories = Category.all
  end
  def show
    @pages = Page.all
    @categories = Category.all
    @product = Product.find(params[:id])
  end
end