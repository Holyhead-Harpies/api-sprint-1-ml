class ChangeActivityStatusTypeInCustomers < ActiveRecord::Migration[5.1]
  def self.up
    change_column :customers, :activity_status, :boolean
  end
 
  def self.down
    change_column :customers, :activity_status, :integer
  end
end
