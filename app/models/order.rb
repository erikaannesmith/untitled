class Order < ApplicationRecord
  validates :max_due_date, :designer_id, :specs, presence: true
  belongs_to :designer
  belongs_to :category
  belongs_to :invoice
  has_many :items
  has_many :applications
end
