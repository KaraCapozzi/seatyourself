class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :opening_time
      t.integer :closing_time
      t.integer :max_capacity
      t.integer :contact_phone
      t.integer :owner_id

      t.timestamps
    end
  end
end
