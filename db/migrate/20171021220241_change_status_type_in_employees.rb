class ChangeStatusTypeInEmployees < ActiveRecord::Migration[5.1]
  def self.up
    change_column :employees, :status, :boolean
  end
 
  def self.down
    change_column :employees, :status, :integer
  end
end
