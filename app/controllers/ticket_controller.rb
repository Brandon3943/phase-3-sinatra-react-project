class TicketController < ApplicationController
    
    get "/tickets" do
        Ticket.all.to_json
    end

    get "/tickets/:id" do
        Ticket.find(params[:id]).to_json      
    end


    post "/tickets" do 
        Ticket.create(ticket_params).to_json
    end

    delete "/tickets/:id" do
        Ticket.find(param[:id]).destory     
        204   
    end


    private

    def ticket_params
        allowed_params = %w(customer_id)
        params.select {|param,value| allowed_params.include?(param)}
      end

end