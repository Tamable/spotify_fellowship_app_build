class AddNullFalse < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :start, :datetime, null: false
    change_column :events, :end, :datetime, null: false
    remove_column :users, :password_digest
    remove_column :users, :session_token
  end
end
