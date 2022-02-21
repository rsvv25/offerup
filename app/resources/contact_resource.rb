class ContactResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :bought_id, :integer
  attribute :selling_id, :integer

  # Direct associations

  has_many   :items,
             resource: ListingResource

  # Indirect associations
end
