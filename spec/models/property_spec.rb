require 'rails_helper'

RSpec.describe Property, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:property)).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:value) }
end
