class AddContactReferenceToListings < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :listings, :contacts
    add_index :listings, :contact_id
    change_column_null :listings, :contact_id, false
  end
end
