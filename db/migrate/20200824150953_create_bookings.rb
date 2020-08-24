class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :number_of_plants
      t.string :key
      t.boolean :dusting_service, default: false
      t.boolean :cutting_service, default: false
      t.boolean :repotting_service, default: false
      t.boolean :picture_service, default: false
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.references :jungle, foreign_key: true

      t.timestamps
    end
  end
end
