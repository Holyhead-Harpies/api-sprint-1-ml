class OrderSerializer < ActiveModel::Serializer
  attributes *Tag.column_names
end
