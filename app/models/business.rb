class Business < ApplicationRecord
  has_one :shop
  has_many :communicates, through: :shop
end
