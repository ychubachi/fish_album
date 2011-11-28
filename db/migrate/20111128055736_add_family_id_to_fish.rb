class AddFamilyIdToFish < ActiveRecord::Migration
  def change
    add_column :fish, :family_id, :integer
  end
end
