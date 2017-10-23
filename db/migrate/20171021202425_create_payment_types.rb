class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.integer :account_number
      t.date :expiration_date
      t.references :customer, index: true
      t.references :issuing_bank, index: true

      t.timestamps
    end
  end
end
