class Customer < ApplicationRecord

    require 'pry'

    has_many :products

    has_many :orders

    has_many :payment_types

    validates :first_name, :last_name, :presence => true

    def check_pt?(pt)
        # binding.pry
        if self.payment_types.ids.include?(pt.to_i)
            true
        else
            false
        end
    end 

end
