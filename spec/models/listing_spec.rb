require "rails_helper"

RSpec.describe Listing, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:category) }

    it { should belong_to(:contact) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
