class FinderController < ApplicationController
  
  before_action :load_fav_prod, except: :save_favourite_product
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
  
  def search_results
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @products = Product.where("product_name LIKE ?", wildcard_keywords).order("product_name").page(params[:page]).per(6)
    @pages = Page.all
    @categories = Category.all
  end
  
  def category_search_results
    @categories = Category.all
    @pages = Page.all
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @products = Product.where("category_id = ? AND product_name LIKE ?", params[:my_option], wildcard_keywords).order("product_name").page(params[:page]).per(6)
  end
  
  def save_favourite_product
    session[:fav_prod_id] = params[:id]
    redirect_to :back
  end
  
  private 
  def load_fav_prod
    if session[:fav_prod_id]
      @fav_prod = Product.find(session[:fav_prod_id])
    else
      @fav_prod = false
    end 
  end
end