class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.string :family_jp
      t.string :name_jp
      t.string :nickname_jp
      t.string :family_en
      t.string :name_en
      t.string :name_la

      t.timestamps
    end
  end
end
