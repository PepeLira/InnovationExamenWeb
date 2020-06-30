class AddUserToShopQuantityPost < ActiveRecord::Migration[6.0]
  def change
    add_reference :shop_quantity_posts, :User, null: true, foreign_key: true
  end
end
