require 'rails_helper'

RSpec.describe "Tweets", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/tweets"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/create_tweet"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT /update/:id" do
    it "returns http success" do
      put "/update_tweet/:id"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /destroy" do
    it "returns http success" do
      delete "/delete_tweet"
      expect(response).to have_http_status(:success)
    end
  end

end
