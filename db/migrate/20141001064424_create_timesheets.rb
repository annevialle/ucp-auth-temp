class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.references :user, index: true
      t.references :event, index: true
      t.datetime :timehseet_date

      t.timestamps
    end
  end
end
