class AddThumbPhotoIdToFish < ActiveRecord::Migration
  def change
    add_column :fish, :thumb_photo_id, :integer
  end
end
