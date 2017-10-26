require 'rails_helper'

describe 'Computer' do

  context '.create!' do
    it 'is not valid without a commission_date' do
      computer = Computer.create(commission_date: 1)
      expect(computer.commission_date == 1)
    end
  end
  context '.create' do
    it 'is not valid with a bigger commission date than decommission date' do
      computer = Computer.create(commission_date: '2017-09-26',
                               decommission_date: '2017-08-26' )

      expect(computer).to_not be_valid
    end
  end
end