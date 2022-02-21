class AddCategoryReferenceToListings < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :listings, :categories
    add_index :listings, :category_id
    change_column_null :listings, :category_id, false
  end
end
