class CreateTable < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.float :price
      
      t.timestamps
    end
  end
end
