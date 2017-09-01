require 'rails_helper'

describe RestuarantsController do
  describe 'GET #index' do
    it 'responds with status code 200' do
      get :index
      expect(response).to have_http_status 200
    end
  end
end
