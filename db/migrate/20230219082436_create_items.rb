class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer  :inventory
      t.string :img_url
    end
  end
end
