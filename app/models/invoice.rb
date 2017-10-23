class Invoice < ApplicationRecord
    validates :payment_due_date, :order_status, :payment_status, :price, :due_date, presence: true
    belongs_to :producer, through: :application
    belongs_to :designer, through: :order
end
