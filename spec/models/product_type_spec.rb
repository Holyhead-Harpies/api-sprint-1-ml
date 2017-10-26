require 'rails_helper'

describe ProductType, type: :model do

  context 'without product_type_name' do
    it 'throws error if no product_type_name is present' do
      product_type = ProductType.create
      product_type.product_type_name = ''
      expect(product_type).to_not be_valid
    end
  end
end
