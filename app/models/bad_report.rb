class BadReport < ApplicationRecord
  belongs_to :user
  belongs_to :shop_quantity_post
end
