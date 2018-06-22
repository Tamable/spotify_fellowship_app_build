class ChangeDateColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :date
    add_column :events, :calendar_date_id, :integer
    add_index :events, :calendar_date_id
  end
end
