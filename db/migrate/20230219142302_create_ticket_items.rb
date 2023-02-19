class CreateTicketItems < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_items do |t|
      t.integer :ticket_id
      t.integer :item_id
    end
  end
end
