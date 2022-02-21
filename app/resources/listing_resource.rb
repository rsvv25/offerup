class ListingResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :price, :integer
  attribute :category_id, :integer
  attribute :image, :string
  attribute :location, :string
  attribute :description, :string
  attribute :contact_id, :integer
  attribute :item_id, :integer

  # Direct associations

  belongs_to :category

  belongs_to :contact

  # Indirect associations

end
