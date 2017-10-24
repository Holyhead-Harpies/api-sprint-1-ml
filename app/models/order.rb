class Order < ApplicationRecord

    has_many :customers

    has_many :payment_types

    has_and_belongs_to_many :products

    validates :customer_id, presence: true, uniqueness: true

end
