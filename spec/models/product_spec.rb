require 'rails_helper'

describe Product, type: :model do

  context 'without product_type_id' do
    it 'throws error if no product_type_id is present' do
      product = Product.create
      product.product_type_id = ''
      expect(product).to_not be_valid
    end
  end
  context 'without customer_id' do
    it 'throws error if no customer_id is present' do
      product = Product.create
      product.customer_id = ''
      expect(product).to_not be_valid
    end
  end
end
