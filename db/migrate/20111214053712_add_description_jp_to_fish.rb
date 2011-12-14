class AddDescriptionJpToFish < ActiveRecord::Migration
  def change
    add_column :fish, :description_jp, :string
  end
end
