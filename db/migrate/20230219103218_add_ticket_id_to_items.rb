class AddTicketIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :ticket_id, :integer
  end
end
