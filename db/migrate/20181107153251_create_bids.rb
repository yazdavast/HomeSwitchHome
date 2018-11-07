class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.Float :valor
      t.DateTime :fecha

      t.timestamps
    end
  end
end
