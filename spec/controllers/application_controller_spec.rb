require 'rails_helper'

describe ApplicationController do

  controller do
    def index
      render json: nil
    end
  end

  describe "websites' properties" do
    it "is loaded" do
      get :index
      expect(assigns(:properties)).not_to be_nil
    end
  end
end