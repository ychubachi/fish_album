class AddFishIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :fish_id, :integer
  end
end
