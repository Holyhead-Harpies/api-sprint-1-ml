class TrainingProgram < ApplicationRecord

	validates :program_name, :start_date_time, :end_date_time, :attendee_max, presence: true
    has_and_belongs_to_many :employees
    validate :end_date_time_after_start_date_time

    def end_date_time_after_start_date_time
        if end_date_time < start_date_time
        	errors.add :end_date_time, "Whoah, buckaroo, it can't start after it ends."
        end
    end

end
