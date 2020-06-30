class AddBusinessIdToShop < ActiveRecord::Migration[6.0]
  def change
    add_reference :shops, :Business, null: true, foreign_key: true
  end
end
