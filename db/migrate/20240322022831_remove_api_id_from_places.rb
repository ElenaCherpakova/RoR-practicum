class RemoveApiIdFromPlaces < ActiveRecord::Migration[7.1]
  def change
    remove_column :places, :api_id, :string
  end
end
