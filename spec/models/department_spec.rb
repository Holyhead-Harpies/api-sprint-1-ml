require 'rails_helper'

describe Department, type: :model do

  context 'without department name' do
    it 'throws error if no department_name is present' do
      department = Department.create
      department.department_name = ''
      expect(department).to_not be_valid
    end
  end
end
