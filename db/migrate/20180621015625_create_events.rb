class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string 'title', null: false
      t.text 'description'
      t.integer 'date', null: false
      t.timestamps
    end
  end
end
