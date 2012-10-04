class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :phone
      t.integer :shuttle_id
      t.integer :location_id

      t.timestamps
    end
  end
end
