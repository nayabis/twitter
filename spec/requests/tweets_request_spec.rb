require 'rails_helper'

RSpec.describe "Tweets", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/tweets"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/api/v1/create_tweet"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT /update/:id" do
    it "returns http success" do
      put "/api/v1/update_tweet/:id"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /destroy" do
    it "returns http success" do
      delete "/api/v1/delete_tweet"
      expect(response).to have_http_status(:success)
    end
  end

end
