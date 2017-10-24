class Computer < ApplicationRecord
    has_many :employees, through: :employee_computers
    validates :commission_date, presence: true
    validate :end_date_after_start_date?

    def end_date_after_start_date?
        if decommission_date
            if decommission_date < commission_date
                errors.add :decommission_date, "must be after commision date. . .buckaroo"
            end
        end
    end
end