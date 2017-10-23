class RenameEmployeeTrainingProgramsToEmployeesTrainingPrograms < ActiveRecord::Migration[5.1]
  def change
    rename_table :employee_training_programs, :employees_training_programs
  end
end
