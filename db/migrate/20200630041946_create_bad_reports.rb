class CreateBadReports < ActiveRecord::Migration[6.0]
  def change
    create_table :bad_reports do |t|
      t.string :comment

      t.timestamps
    end
  end
end
