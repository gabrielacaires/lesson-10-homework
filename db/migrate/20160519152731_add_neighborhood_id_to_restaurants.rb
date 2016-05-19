class AddNeighborhoodIdToRestaurants < ActiveRecord::Migration
  def change
    add_column :neighborhood_id
  end
end
