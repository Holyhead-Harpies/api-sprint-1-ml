class ProductSerializer < ActiveModel::Serializer
  attributes *Tag.column_names
end
