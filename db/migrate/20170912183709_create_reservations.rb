class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :date
      t.string :time
      t.integer :people
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
