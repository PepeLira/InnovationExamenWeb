class User < ApplicationRecord
  has_many :shop_quantity_posts
  has_many :bad_reports
end
