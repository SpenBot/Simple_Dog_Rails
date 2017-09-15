class CreateDaycares < ActiveRecord::Migration[5.1]

  def change
    create_table :daycares do |t|
      t.string :name
      t.string :address
      t.integer :price

      t.timestamps
    end
  end

end
