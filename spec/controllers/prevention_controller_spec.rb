require 'rails_helper'

RSpec.describe PreventionController, type: :controller do
  describe 'GET #show' do
    let!(:cat) { FactoryGirl.create(:prevention_category) }

    it 'returns http success' do
      get :show, id: cat.slug
      expect(response).to have_http_status(:success)
    end

    it 'it populate the index page' do
      get :show, id: cat.slug
      expect(assigns(:category)).to eq(cat)
    end

    it 'renders the :index view' do
      get :show, id: cat.slug
      expect(response).to render_template :show
    end
  end
end
