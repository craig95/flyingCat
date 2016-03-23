class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :decimal, :default => 1, :null => false
  end
end
