class AddAttributesToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :street, :string
    add_column :projects, :city, :string
    add_column :projects, :postalcode, :int
  end
end
