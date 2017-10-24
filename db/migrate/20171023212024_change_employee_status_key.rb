class ChangeEmployeeStatusKey < ActiveRecord::Migration[5.1]
   def change
   	rename_column :employees, :status, :supervisor_status
   end
end
