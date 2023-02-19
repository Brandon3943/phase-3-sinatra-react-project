class ItemController < Sinatra::Base
    set :default_content_type, 'application/json'

    get "/items" do
        Item.all.to_json
    end

    post "/items" do
        Item.create(
            name: params[:name],
            price: params[:price],
            inventory: params[:inventory],
            img_url: params[:img_url],
            ticket_id: params[:ticket_id]
        ).to_json
    end

    patch "/items/:id" do
        Item.find(params[:id]).update(
            name: params[:name],
            price: params[:price],
            inventory: params[:inventory],
            img_url: params[:img_url],
            ticket_id: params[:ticket_id]
        ).to_json
    end


end