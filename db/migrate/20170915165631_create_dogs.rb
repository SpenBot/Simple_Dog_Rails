class CreateDogs < ActiveRecord::Migration[5.1]

  def change
    create_table :dogs do |t|
      t.string :name
      t.string :photo_url
      t.string :owner
      t.string :breed
      t.string :weight
      t.boolean :medical_check

      t.timestamps
    end
  end
  
end
