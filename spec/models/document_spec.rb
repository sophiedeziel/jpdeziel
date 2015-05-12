require 'rails_helper'

RSpec.describe Document, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:document)).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:slug) }
end
