class AddArtToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :art, :string
  end
end
