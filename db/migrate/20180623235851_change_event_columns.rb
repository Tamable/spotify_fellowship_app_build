class ChangeEventColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :calendar_date_id
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
  end
end
