require 'rails_helper'

RSpec.describe Employee, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:employee)).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:bio) }
  it { should validate_presence_of(:image) }
end
