class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer  :organization_id,     :null => false
      t.string   :name,                :null => false
      t.datetime :date,                :null => false
      t.datetime :start_time,          :null => false
      t.datetime :end_time,            :null => false
      t.integer  :organizer_id,        :null => false
      t.integer  :status,              :null => false

      t.timestamps
    end
  end
end
