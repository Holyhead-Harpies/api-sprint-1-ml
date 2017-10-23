class PaymentType < ApplicationRecord

    has_many :issuing_banks
    validates :account_number, :expiration_date, :customer_id, :issuing_bank_id, presence: true

end
