class AddLatestActivityDateToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :latest_activity_date, :date
  end
end
