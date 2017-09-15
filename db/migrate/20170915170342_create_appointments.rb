class CreateAppointments < ActiveRecord::Migration[5.1]

  def change
    create_table :appointments do |t|
      t.references :dog
      t.references :daycare

      t.timestamps
    end
  end

end
