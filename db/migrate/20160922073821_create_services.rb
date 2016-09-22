class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.date :last_serviced
      t.date :next_service
      t.integer :duration_day
      t.integer :duration_km
      t.integer :last_serviced_km
      t.integer :next_service_km
      t.string :major_repair
      t.string :general_repair
      t.string :electrical
      t.string :electronic
      t.string :engine
      t.string :heating_cooling
      t.string :steering_suspension
      t.string :undercar

      t.timestamps
    end
  end
end
