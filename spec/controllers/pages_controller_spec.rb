require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET #index' do
    let!(:page) { FactoryGirl.create(:page, slug: 'index') }

    it 'it populate the index page' do
      get :index
      expect(assigns(:page)).to eq(page)
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    let!(:page) { FactoryGirl.create(:page, slug: 'services') }

    it 'it populate the index page' do
      get :show, id: page.slug
      expect(assigns(:page)).to eq(page)
    end

    it 'renders the :index view' do
      get :show, id: page.slug
      expect(response).to render_template :show
    end
  end
end
