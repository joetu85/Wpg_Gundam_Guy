class CustomersController < InheritedResources::Base

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address, :city, :postalcode)
    end
end

