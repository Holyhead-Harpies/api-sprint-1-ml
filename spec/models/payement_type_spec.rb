require 'rails_helper'

describe PaymentType, type: :model do

  context 'without account_number' do
    it 'throws error if no account_number is present' do
      payment_type = PaymentType.create
      payment_type.account_number = ''
      expect(payment_type).to_not be_valid
    end
  end
  context 'without expiration_date' do
    it 'throws error if no expiration_date is present' do
      payment_type = PaymentType.create
      payment_type.expiration_date = ''
      expect(payment_type).to_not be_valid
    end
  end
  context 'without customer_id' do
    it 'throws error if no customer_id is present' do
      payment_type = PaymentType.create
      payment_type.customer_id = ''
      expect(payment_type).to_not be_valid
    end
  end
  context 'without issuing_bank_id' do
    it 'throws error if no issuing_bank_id is present' do
      payment_type = PaymentType.create
      payment_type.issuing_bank_id = ''
      expect(payment_type).to_not be_valid
    end
  end
end
