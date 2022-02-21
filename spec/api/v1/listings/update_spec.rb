require 'rails_helper'

RSpec.describe "listings#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/listings/#{listing.id}", payload
  end

  describe 'basic update' do
    let!(:listing) { create(:listing) }

    let(:payload) do
      {
        data: {
          id: listing.id.to_s,
          type: 'listings',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(ListingResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { listing.reload.attributes }
    end
  end
end
