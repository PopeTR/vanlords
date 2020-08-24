class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.integer :booking_status, default: 2

      t.timestamps
    end
  end
end
