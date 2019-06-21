class AddPicturesToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :pictures, :json
  end
end
