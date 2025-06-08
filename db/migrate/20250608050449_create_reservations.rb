class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone
      t.datetime :reserved_at

      t.timestamps
    end
  end
end
