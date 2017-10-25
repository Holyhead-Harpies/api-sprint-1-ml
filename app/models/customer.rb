class Customer < ApplicationRecord

    require 'pry'

    has_many :products

    has_many :orders

    has_many :payment_types

    validates :first_name, :last_name, :presence => true

    def check_pt?(pt)

        if self.payment_types.ids.include?(pt.to_i)

            true

        else

            false

        end

    end 

     def check_customer_open_order_status?(order)

        unopen_order = true

        order.each do |o|
            if o.amount_paid == 0.0
                unopen_order = false
            end
        end

        return unopen_order
        
    end

end
