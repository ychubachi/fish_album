class AddNameLaToFamily < ActiveRecord::Migration
  def change
    add_column :families, :name_la, :string
  end
end
