class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :location
      t.time :opening_schedule
      t.time :closing_schedule
      t.string :shop_type
      t.numeric :dimension

      t.timestamps
    end
  end
end
