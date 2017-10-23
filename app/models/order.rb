class Order < ApplicationRecord

    has_many :customers

    has_many :payment_types

    has_and_belongs_to_many :products

end
