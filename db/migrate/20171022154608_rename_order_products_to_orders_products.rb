class RenameOrderProductsToOrdersProducts < ActiveRecord::Migration[5.1]
  def change
    rename_table :order_products, :orders_products
  end
end
