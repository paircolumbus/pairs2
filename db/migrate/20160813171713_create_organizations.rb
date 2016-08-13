class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string  :name,          :null => false
      t.text    :description,   :null => false
      t.integer :admin_id,      :null => false, :default => ""

      t.timestamps
    end
  end
end
