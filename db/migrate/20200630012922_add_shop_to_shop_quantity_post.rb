class AddShopToShopQuantityPost < ActiveRecord::Migration[6.0]
  def change
    add_reference :shop_quantity_posts, :Shop, null: true, foreign_key: true
  end
end
