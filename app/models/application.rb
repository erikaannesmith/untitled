class Application < ApplicationRecord
  validates :price_offer, :specs, presence: true
  belongs_to :producer
end
