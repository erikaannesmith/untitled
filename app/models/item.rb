class Item < ApplicationRecord
    validates :name, :quantity, presence: true 
    belongs_to :order
end