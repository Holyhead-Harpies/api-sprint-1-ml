require 'rails_helper'

describe Order, type: :model do

  context 'without customer_id' do
    it 'throws error if no customer_id is present' do
      order = Order.create
      order.customer_id = ''
      expect(order).to_not be_valid
    end
  end
end
