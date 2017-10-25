require 'rails_helper'

describe Employee, type: :model do

  context 'without last_name' do
    it 'throws error if no last_name is present' do
      employee = Employee.create
      employee.last_name = ''
      expect(employee).to_not be_valid
    end
  end
  context 'without first_name' do
    it 'throws error if no last_name is present' do
      employee = Employee.create
      employee.first_name = ''
      expect(employee).to_not be_valid
    end
  end
  context 'without department_id' do
    it 'throws error if no department_id is present' do
      employee = Employee.create
      employee.department_id = ''
      expect(employee).to_not be_valid
    end
  end

end
