class CreateCollections < ActiveRecord::Migration[7.1]
  def change
    return if table_exists?(:collections)

    create_table :collections do |t|
      t.string :name, null: false
      t.references :user, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
