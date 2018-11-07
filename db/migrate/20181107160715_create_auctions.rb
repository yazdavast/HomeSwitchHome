class CreateAuctions < ActiveRecord::Migration[5.1]
  def change
    create_table :auctions do |t|
      t.Float :precioBase
      t.Float :precioActual
      t.week :semanaDeOcup

      t.timestamps
    end
  end
end
