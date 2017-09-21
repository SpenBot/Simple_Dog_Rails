class CreateDaycares < ActiveRecord::Migration[5.1]

  def change
    create_table :daycares do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :price
      t.string :photo_url

      t.timestamps
    end
  end

end
