class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :department_name
      t.float :budget

      t.timestamps
    end
  end
end
