class RenamePrizeInProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :prize, :price
  end
end
