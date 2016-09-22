class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :vmodel
      t.integer :year
      t.integer :month
      t.string :type
      t.string :colour
      t.integer :rego_num
      t.integer :plat_num
      t.integer :capacity
      t.integer :num_of_passenger
      t.string :transmission
      t.string :fuel_type
      t.integer :mileage
      t.timestamps
    end
  end
end
