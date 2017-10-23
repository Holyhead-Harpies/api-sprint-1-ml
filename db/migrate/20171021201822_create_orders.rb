class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :amount_paid
      t.references :customer, index: true
      t.references :payment_type, index: true

      t.timestamps
    end
  end
end
