class CreateCalendarDates < ActiveRecord::Migration[5.1]
  def change
    create_table :calendar_dates do |t|
      t.integer 'date'
      t.timestamps
    end
  end
end
