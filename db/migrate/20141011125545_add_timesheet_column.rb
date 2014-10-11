class AddTimesheetColumn < ActiveRecord::Migration
  def change
    add_column :events, :date_start, :datetime
    add_column :events, :date_end, :datetime
    add_column :events, :description, :string
    add_column :events, :event, :string
  end
end
