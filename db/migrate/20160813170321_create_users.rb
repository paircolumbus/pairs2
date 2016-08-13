class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string  :first_name, :null => false
      t.string  :last_name,  :null => false
      t.string  :email,      :null => false, :default => ""
      t.string  :username,   :null => false
      t.integer :skill_level,:null => false 

      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :username,             :unique => true
  end
end
