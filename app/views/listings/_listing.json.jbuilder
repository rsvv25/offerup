json.extract! listing, :id, :price, :category_id, :image, :location,
              :description, :contact_id, :item_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
