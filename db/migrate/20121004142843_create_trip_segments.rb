class CreateTripSegments < ActiveRecord::Migration
  def change
    create_table :trip_segments do |t|
      t.integer :reservation_id
      t.integer :shuttle_id

      t.timestamps
    end
  end
end
