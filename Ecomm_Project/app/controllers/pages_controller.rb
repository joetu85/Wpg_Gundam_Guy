class PagesController < InheritedResources::Base
  before_action :load_fav_prod, except: :save_favourite_product
  
  def show
    @pages = Page.all
    @page = Page.find(params[:id])
    @categories = Category.all
  end

  private  
    def page_params
      params.require(:page).permit(:content)
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

