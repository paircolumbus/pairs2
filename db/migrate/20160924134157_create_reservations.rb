class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :user
      t.belongs_to :event
      t.belongs_to :reservation_status
      t.belongs_to :skill
      t.integer :experience_level

      t.timestamps
    end
  end
end
