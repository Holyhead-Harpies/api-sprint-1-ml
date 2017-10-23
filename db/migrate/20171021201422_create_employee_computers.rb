class CreateEmployeeComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_computers do |t|
      t.datetime :assignment_date
      t.datetime :return_date
      t.references :employee, index: true
      t.references :computer, index: true

      t.timestamps
    end
  end
end
