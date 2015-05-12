require 'rails_helper'

RSpec.describe DocumentsPresenter do
  describe 'the documents presenter' do
    let(:documents) { FactoryGirl.create_list(:document, 25) }
    it 'gets the documents' do
      presenter = DocumentsPresenter.new(nil, 'a string', nil)
      expect(presenter.attributes[:documents]).to eq(documents)
    end

    it 'assigns content' do
      presenter = DocumentsPresenter.new(nil, 'a string', nil)
      expect(presenter.content).to eq('a string')
    end
  end
end
