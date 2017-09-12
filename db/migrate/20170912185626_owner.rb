class Owner < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :owner_id, :integer
  end
end
