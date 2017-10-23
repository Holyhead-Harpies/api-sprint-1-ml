class Employee < ApplicationRecord

    has_many :computers, through: :employee_computers

    has_and_belongs_to_many :training_programs

    belongs_to :department

end
