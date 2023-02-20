class ItemController < ApplicationController


    get "/items" do
        Item.all.to_json
    end

    post "/items" do
        Item.create(item_params).to_json
    end

    patch "/items/:id" do
        Item.find(params[:id]).update(item_params).to_json
    end

    delete "/items/:id" do
        Item.find(param[:id]).destory     
        204   
    end

    private


    def item_params
        allowed_params = %w(name price inventory img_url ticket_id)
        params.select {|param,value| allowed_params.include?(param)}
      end


end