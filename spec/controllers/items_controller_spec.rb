require 'rails_helper'

describe ItemsController do
  describe 'GET #index' do
    it "populates an array of items ordered by created_at DESC" do
      items = FactoryBot.create(:item )
      get :index
      expect(assigns(:items)).to match(items)
    end

    it "renders the :index template" do
    end
  end
end
