class CreateGovernments < ActiveRecord::Migration[5.2]
  def change
    create_table :governments do |t|
      t.string :country

      t.timestamps
    end
  end
end
