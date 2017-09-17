class CreateAppointments < ActiveRecord::Migration[5.1]

  def change
    create_table :appointments do |t|
      t.references :dog
      t.references :daycare

      t.integer :day
      t.integer :month
      t.integer :year
      t.integer :hour

      t.timestamps
    end
  end

end
