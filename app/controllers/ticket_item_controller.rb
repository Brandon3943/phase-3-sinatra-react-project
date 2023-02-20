class TicketItemController < ApplicationController

    get "/ticket_items" do
        TicketItem.all.to_json
    end

    post "/ticket_items" do 
        TicketItem.create(ticket_item_params).to_json
    end

    delete "/ticket_items/:id" do
        TicketItem.find(param[:id]).destory     
        204   
    end


    private

    def ticket_item_params
        allowed_params = %w(ticket_id item_id)
        params.select {|param,value| allowed_params.include?(param)}
      end
    


end