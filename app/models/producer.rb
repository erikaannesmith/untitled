class Producer < ApplicationRecord
    validates :email, :password, :company_name, :website, :description, :location, presence: true, uniqueness: true
    has_many :applications
end