require 'rails_helper'

RSpec.describe Radiograph, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:radiograph)).to be_valid
  end

  it { should validate_presence_of(:age) }
  it { should validate_presence_of(:image) }
  it { should belong_to(:prevention_category) }
end
