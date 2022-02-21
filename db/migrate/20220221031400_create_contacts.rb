class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :bought_id
      t.integer :selling_id

      t.timestamps
    end
  end
end
