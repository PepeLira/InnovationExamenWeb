class Shop < ApplicationRecord
  belongs_to :business
  has_many :communicates
end
