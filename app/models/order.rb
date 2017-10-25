class Order < ApplicationRecord

    require 'pry'

    has_many :customers
    has_many :payment_types
    has_and_belongs_to_many :products

    validates :customer_id, presence: true
    
    def order_total_price(op)
        # binding.pry
        if op.empty?
            return 0.00
        else
            price = 0.00
            op.each do |p|
                # product = Product.find(p)
                price += p.price
            end
            return price
        end
    end

end
