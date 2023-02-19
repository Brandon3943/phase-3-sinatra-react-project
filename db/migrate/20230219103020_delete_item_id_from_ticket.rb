class DeleteItemIdFromTicket < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :item_id, :integer
  end
end
