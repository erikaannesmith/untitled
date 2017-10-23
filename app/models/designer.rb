class Designer < ApplicationRecord
  has_secure_password
  validates :email, :password, :company_name, :website, :description, :location, presence: true
  validates_uniqueness_of :email, :company_name, :website
  has_many :orders
end
