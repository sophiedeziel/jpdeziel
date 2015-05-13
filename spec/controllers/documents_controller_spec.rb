require 'rails_helper'

RSpec.describe DocumentsController, type: :controller do
  describe 'GET #show' do
    let!(:document) { FactoryGirl.create(:document) }

    it 'it populate the index page' do
      get :show, id: document.slug
      expect(assigns(:document)).to eq(document)
    end

    it 'renders the :index view' do
      get :show, id: document.slug
      expect(response).to render_template :show
    end
  end
end
