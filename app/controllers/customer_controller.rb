class CustomerController < ApplicationController
  
    get "/customers/:id" do
        Customer.find(params[:id]).to_json      
    end

    get "/customers" do
        Customer.all.to_json      
    end

    post "/customers" do 
        Customer.create(customer_params).to_json
    end

    patch "/customers/:id" do 
        Customer.find(params[:id]).update(customer_params).to_json
    end

    delete "/customers/:id" do
        Customer.find(params[:id]).destroy     
        status 204   
    end



    private

    def customer_params
        allowed_params = %w(name)
        params.select {|param,value| allowed_params.include?(param)}
      end


end
