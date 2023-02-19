class UpdateItemColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :ticket_id, :integer
    add_column :items, :size, :string
  end
end
