class Item < ActiveRecord::Base
    has_many :ticket_items
    has_many :tickets, through: :ticket_items
end