class Designer < ApplicationRecord
  validates :email, :password, :company_name, :website, :description, :location, presence: true, uniqueness: true

end
