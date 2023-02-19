class CustomerController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    get "/customers" do
        Customer.all.to_json
    end

    post "/customers" do 
        Customer.create(name: params[:name]).to_json
    end

    patch "/customers/:id" do 
        Customer.find(params[:id]).update(params[:name]).to_json
    end

    delete "/customers/:id" do
        Customer.find(param[:id]).destory     
        204   
    end


end