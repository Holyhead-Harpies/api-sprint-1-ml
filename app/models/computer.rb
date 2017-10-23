class Computer < ApplicationRecord

    has_many :employees, through: :employee_computers

end
