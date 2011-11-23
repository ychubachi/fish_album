class AddFileToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :file, :string
  end
end
