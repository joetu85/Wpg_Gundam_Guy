class CategoriesController < InheritedResources::Base
  
  def show
    categoryId = params[:id]
    @products = Product.where(category_id: categoryId).order("product_name").page(params[:page]).per(6)
    @pages = Page.all
    @categories = Category.all
  end
end
