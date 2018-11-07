class CreateWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
      t.Date :inicio
      t.Date :fin
      t.string :estado

      t.timestamps
    end
  end
end
