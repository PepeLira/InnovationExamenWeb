class Shop < ApplicationRecord
  belongs_to :businesses
  has_many :communicates
end
