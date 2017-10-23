class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.date :commission_date
      t.date :decommission_date

      t.timestamps
    end
  end
end
