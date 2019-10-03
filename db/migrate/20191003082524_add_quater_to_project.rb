class AddQuaterToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :quater, :string
  end
end
