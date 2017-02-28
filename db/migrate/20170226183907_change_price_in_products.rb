class ChangePriceInProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, 'decimal USING CAST(price AS decimal)
  end
end
