require 'rails_helper'

RSpec.describe Contact, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:items) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
