class CreateAppointments < ActiveRecord::Migration[5.1]

  def change
    create_table :appointments do |t|
      t.references :dog
      t.references :daycare

      t.string :created_by

      t.string :weekday
      t.string :month
      t.integer :day
      t.integer :time

      t.timestamps
    end
  end

end
