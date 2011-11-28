class RemoveFamilyFromFish < ActiveRecord::Migration
  def up
    remove_column :fish, :family_jp
    remove_column :fish, :family_en
  end

  def down
    add_column :fish, :family_en, :string
    add_column :fish, :family_jp, :string,
  end
end
