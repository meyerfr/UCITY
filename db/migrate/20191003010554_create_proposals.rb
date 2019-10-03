class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.json :pictures
      t.references :project, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
