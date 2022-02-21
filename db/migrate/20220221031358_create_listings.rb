class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :price
      t.integer :category_id
      t.string :image
      t.string :location
      t.text :description
      t.integer :contact_id
      t.integer :item_id

      t.timestamps
    end
  end
end
