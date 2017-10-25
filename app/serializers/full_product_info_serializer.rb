class FullProductInfoSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :description, :price, :quantity, :created_at, :customer_id, :updated_at, :product_type_id
end
