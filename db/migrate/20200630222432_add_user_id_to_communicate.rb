class AddUserIdToCommunicate < ActiveRecord::Migration[6.0]
  def change
    add_reference :communicates, :User, null: true, foreign_key: true
  end
end
