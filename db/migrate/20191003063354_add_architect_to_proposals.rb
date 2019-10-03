class AddArchitectToProposals < ActiveRecord::Migration[5.2]
  def change
    add_column :proposals, :architect, :string
  end
end
