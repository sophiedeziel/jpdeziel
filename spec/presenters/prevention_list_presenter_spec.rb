require 'rails_helper'

RSpec.describe PreventionListPresenter do
  describe "the prevention_list presenter" do
    let(:prevention_categories) { FactoryGirl.create_list(:prevention_category, 25)}
    it 'gets the documents' do
      presenter = PreventionListPresenter.new(nil, "a string", nil)
      expect(presenter.attributes[:categories]).to eq(prevention_categories)
    end

    it 'assigns content' do
      presenter = PreventionListPresenter.new(nil, "a string", nil)
      expect(presenter.content).to eq("a string")
    end

  end
end
