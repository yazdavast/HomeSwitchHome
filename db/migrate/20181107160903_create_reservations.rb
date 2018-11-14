class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.float :precio
      t.string :email
      t.integer :residence_id
      t.timestamps
    end
  end
end
