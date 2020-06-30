class AddCommunicateToBadReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :bad_reports, :Communicate, null: true, foreign_key: true
  end
end
