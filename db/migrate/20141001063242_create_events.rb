class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :promotion, index: true
      t.string :type
      t.datetime :event_date

      t.timestamps
    end
  end
end
