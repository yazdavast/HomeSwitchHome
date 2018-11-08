class CreateAuctions < ActiveRecord::Migration[5.1]
  def change
    create_table :auctions do |t|
      t.float :precioBase
      t.float :precioActual
      t.week :semanaDeOcup

      t.timestamps
    end
  end
end
