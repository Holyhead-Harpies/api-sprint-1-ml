class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :price
      t.text :description
      t.references :product_type, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
