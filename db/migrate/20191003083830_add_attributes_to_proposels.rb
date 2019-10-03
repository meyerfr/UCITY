class AddAttributesToProposels < ActiveRecord::Migration[5.2]
  def change
    add_column :proposals, :start, :date
    add_column :proposals, :end, :date
    add_column :proposals, :price, :int
    add_column :proposals, :pos, :string
    add_column :proposals, :name, :string
  end
end
