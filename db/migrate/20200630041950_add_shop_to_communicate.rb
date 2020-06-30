class AddShopToCommunicate < ActiveRecord::Migration[6.0]
  def change
    add_reference :communicates, :Shop, null: true, foreign_key: true
  end
end
