class AddColumnsToBoats < ActiveRecord::Migration[5.0]
  def change
    add_column :boats, :name, :string
    add_column :boats, :container, :integer
    add_column :boats, :location, :string
  end
end
