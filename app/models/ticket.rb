class Ticket < ActiveRecord::Base 
    has_many :ticket_items
    has_many :items, through: :ticket_items
    belongs_to :customer
end