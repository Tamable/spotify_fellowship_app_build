class CreateDates < ActiveRecord::Migration[5.1]
  def change
    create_table :dates do |t|
      t.integer 'date'
      t.timestamps
    end
  end
end
