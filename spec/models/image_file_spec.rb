require 'rails_helper'

RSpec.describe ImageFile, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:image_file)).to be_valid
  end

  it { should validate_presence_of(:file) }
end
