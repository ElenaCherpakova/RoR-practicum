class CreateCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :collections do |t|
      t.string :name
      t.integer :user_id
      t.integer :city_id

      t.timestamps
    end
  end
end
