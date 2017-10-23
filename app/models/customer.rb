class Customer < ApplicationRecord

    has_many :products

    has_many :orders

    has_many :payment_types

    validates :first_name, :last_name, :activity_status, :presence => true

end
