class AddUsersToDaycares < ActiveRecord::Migration[5.1]
  def change
    add_reference :daycares, :user, foreign_key: true
  end
end
