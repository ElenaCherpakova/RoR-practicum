class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :place_type
      t.text :description
      t.integer :rating
      t.string :api_id
      t.string :image_url

      t.timestamps
    end
  end
end
