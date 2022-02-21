require "rails_helper"

RSpec.describe ListingResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "listings",
          attributes: {},
        },
      }
    end

    let(:instance) do
      ListingResource.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true),
                                 instance.errors.full_messages.to_sentence
      end.to change { Listing.count }.by(1)
    end
  end

  describe "updating" do
    let!(:listing) { create(:listing) }

    let(:payload) do
      {
        data: {
          id: listing.id.to_s,
          type: "listings",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      ListingResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update_attributes).to eq(true)
      end.to change { listing.reload.updated_at }
      # .and change { listing.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:listing) { create(:listing) }

    let(:instance) do
      ListingResource.find(id: listing.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change { Listing.count }.by(-1)
    end
  end
end
