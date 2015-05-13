require 'rails_helper'

RSpec.describe EmployeePresenter do
  describe 'the documents presenter' do
    let(:employees) { FactoryGirl.create_list(:employee, 25) }
    it 'gets the documents' do
      presenter = EmployeePresenter.new(nil, 'a string', nil)
      expect(presenter.attributes[:employees]).to eq(employees)
    end

    it 'assigns content' do
      presenter = EmployeePresenter.new(nil, 'a string', nil)
      expect(presenter.content).to eq('a string')
    end
  end
end
