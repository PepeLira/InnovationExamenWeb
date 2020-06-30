class AddShopQuantityPostToBadReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :bad_reports, :ShopQuantityPost, null: true, foreign_key: true
  end
end
