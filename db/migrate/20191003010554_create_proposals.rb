class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.json :pictures
      t.references :user, foreign_key: true
      t.references :government, foreign_key: true

      t.timestamps
    end
  end
end
