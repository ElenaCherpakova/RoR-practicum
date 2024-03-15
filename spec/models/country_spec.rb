require 'rails_helper'

RSpec.describe Country, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

 describe "validations" do
    it "is valid with a name" do
      country = Country.new(name: "USA")
      expect(country).to be_valid
    end

    it "is invalid without a name" do
        country = Country.new
        country.valid?
        expect(country.errors[:name]).to include("can't be blank")
    end

    it "is invalid with a duplicate name" do
      Country.create(name: "USA")
      country = Country.new(name: "USA")
      country.valid?
      expect(country.errors[:name]).to include("has already been taken")
    end

    
end
end
