class CategoriesController < InheritedResources::Base
  before_action :load_fav_prod, except: :save_favourite_product
  
  def show
    categoryId = params[:id]
    @products = Product.where(category_id: categoryId).order("product_name").page(params[:page]).per(6)
    @pages = Page.all
    @categories = Category.all
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
