class CalendarDatesTableRemove < ActiveRecord::Migration[5.1]
  def change
    drop_table :calendar_dates
  end
end
