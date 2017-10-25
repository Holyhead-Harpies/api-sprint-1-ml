class OrderSerializer < ActiveModel::Serializer

  attributes :id, :customer_id, :payment_type_id

  has_many :products
  
end
