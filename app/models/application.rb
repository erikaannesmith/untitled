class Application < ApplicationRecord
  validates :price_offer, :specs, :status, presence: true
  belongs_to :producer
  belongs_to :order
  belongs_to :invoice
end
