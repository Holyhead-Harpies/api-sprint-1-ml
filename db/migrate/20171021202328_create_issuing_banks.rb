class CreateIssuingBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :issuing_banks do |t|
      t.string :issuer_name

      t.timestamps
    end
  end
end
