class Drop < ActiveRecord::Migration[5.1]
  def change
    drop_table :dates
  end
end
