class Listing < ApplicationRecord
  mount_base64_uploader :image, ImageUploader

  # Direct associations

  belongs_to :category

  belongs_to :contact

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    price
  end

end
