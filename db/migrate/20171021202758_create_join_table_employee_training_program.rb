class CreateJoinTableEmployeeTrainingProgram < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_training_programs do |t|
      t.references :employee, index: true
      t.references :training_program, index: true

      t.timestamps
    end
  end
end
