class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name
      t.datetime :birth_date
      t.string :address

      t.timestamps
    end
  end
end
