class PagesController < InheritedResources::Base
  
  def show
    @pages = Page.all
    @page = Page.find(params[:id])
    @categories = Category.all
  end

  private  
    def page_params
      params.require(:page).permit(:content)
    end
    
end

