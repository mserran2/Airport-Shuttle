class CreateShuttles < ActiveRecord::Migration
  def change
    create_table :shuttles do |t|
      t.time :depart
      t.time :arrive
      t.date :date
      t.integer :shuttle_number
      t.integer :seats
      t.float :price

      t.timestamps
    end
  end
end
