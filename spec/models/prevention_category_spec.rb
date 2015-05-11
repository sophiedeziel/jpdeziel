require 'rails_helper'

RSpec.describe PreventionCategory, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:prevention_category)).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:slug) }
  it { should validate_presence_of(:description) }
end
