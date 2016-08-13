class CreatePairs < ActiveRecord::Migration[5.0]
  def change
    create_table :pairs do |t|
      t.integer :event_id, :null => false
      t.integer :person_1, :null => false
      t.integer :person_2, :null => false
      t.integer :status,   default: 0
    end
  end
end
