class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :price, :quantity
end
