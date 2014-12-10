class CustomersController < InheritedResources::Base
  def new
    @pages = Page.all
    @categories = Category.all
    @provinces = Province.all
  end
  
  def add_new_customer
    new_customer = Customer.new(params[:first_name], params[:last_name], params[:address], params[:city], params[:postalcode], params[:province_id])
  end
  
  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address, :city, :postalcode)
    end
end

