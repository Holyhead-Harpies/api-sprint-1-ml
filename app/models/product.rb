class Product < ApplicationRecord

    has_many :product_types

    has_many :customers

    has_and_belongs_to_many :orders

end
