class Producer < ApplicationRecord
    validates :email, :password, :company_name, :website, :description, :location, presence: true
    validates_uniqueness_of :email, :company_name, :website
    has_many :applications
end
