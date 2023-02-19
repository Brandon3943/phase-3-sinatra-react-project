class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :customer_id
      t.integer :item_id
      t.timestamps
    end
  end
end
