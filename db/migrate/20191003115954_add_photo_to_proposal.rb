class AddPhotoToProposal < ActiveRecord::Migration[5.2]
  def change
    add_column :proposals, :photo, :string
  end
end
