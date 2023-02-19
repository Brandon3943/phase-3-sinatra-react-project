class Ticket < ActiveRecord::Base 
    has_many :items
    belongs_to :customers
end