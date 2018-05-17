require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #unsuscribe_newsletter" do
    it "returns http success" do
      get :unsuscribe_newsletter
      expect(response).to have_http_status(:success)
    end
  end

end
