class CreateShopQuantityPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_quantity_posts do |t|
      t.numeric :indoors_quantity
      t.numeric :waiting_line_quantity

      t.timestamps
    end
  end
end
