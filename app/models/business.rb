class Business < ApplicationRecord
  has_one :shop
  has_many :shop_quantity_posts
end
