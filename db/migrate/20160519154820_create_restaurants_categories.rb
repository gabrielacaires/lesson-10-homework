class CreateRestaurantsCategories < ActiveRecord::Migration
  def change
    create_table :restaurants_categories do |t|
      t.integer :restaurant_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
