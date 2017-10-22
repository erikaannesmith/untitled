class Order < ApplicationRecord
  validates :max_due_date, :designer_id, :specs, presence: true
  belongs_to :designer
  belongs_to :category
end
