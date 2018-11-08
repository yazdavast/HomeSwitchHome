class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.float :precio
      t.date :fecha
      t.week :semana

      t.timestamps
    end
  end
end
