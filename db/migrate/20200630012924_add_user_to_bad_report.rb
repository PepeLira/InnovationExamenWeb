class AddUserToBadReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :bad_reports, :User, null: true, foreign_key: true
  end
end
