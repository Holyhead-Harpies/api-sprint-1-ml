require 'rails_helper'

describe Customer, type: :model do

  context 'without last_name' do
    it 'throws error if no last_name is present' do
      customer = Customer.create
      customer.last_name = ''
      expect(customer).to_not be_valid
    end
  end
  context 'without first_name' do
    it 'throws error if no first_name is present' do
      customer = Customer.create
      customer.first_name = ' '
      expect(customer).to_not be_valid
    end
  end
end


