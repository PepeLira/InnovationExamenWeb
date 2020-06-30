class CreateCommunicates < ActiveRecord::Migration[6.0]
  def change
    create_table :communicates do |t|
      t.numeric :indoors_quantity
      t.numeric :waiting_line_quantity

      t.timestamps
    end
  end
end
