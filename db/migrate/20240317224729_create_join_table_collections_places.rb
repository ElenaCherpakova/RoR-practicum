class CreateJoinTableCollectionsPlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :collections_places, id: false do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true
    end
    add_index :collections_places, %i[collection_id place_id], unique: true
  end
end
