class CreateTrainingPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :training_programs do |t|
      t.string :program_name
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.integer :attendee_max

      t.timestamps
    end
  end
end
