class FinderController < ApplicationController
  def index
    @products = Product.order("product_name").page(params[:page]).per(6)
    @pages = Page.all
  end
  def show
    @pages = Page.all
    @product = Product.find(params[:id])
  end
end