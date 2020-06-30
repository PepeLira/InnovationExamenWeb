class Shop < ApplicationRecord
  belongs_to :business
  has_many :shop_quantity_posts
end
