class Order < ApplicationRecord
  validates :max_due_date, :designer_id, :specs, :status, presence: true
  belongs_to :designer
  belongs_to :category
  belongs_to :invoice, optional: true
  has_many :items
  has_many :applications
end
