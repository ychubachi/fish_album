class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name_jp
      t.string :name_en

      t.timestamps
    end
  end
end
