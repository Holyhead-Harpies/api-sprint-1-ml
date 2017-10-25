class ProductSerializer < ActiveModel::Serializer

  require 'pry'

  attributes :id, :product_name, :price, :quantity

  # attribute :description, if: :all_attributes?
  # attribute :customer_id, if: :all_attributes?
  # attribute :product_type_id, if: :all_attributes?
  # attribute :created_at, if: :all_attributes?
  # attribute :updated_at, if: :all_attributes?

  # def all_attributes?
    
  #   @instance_options[:show_all_product_info] ? true : false

  # end

end
