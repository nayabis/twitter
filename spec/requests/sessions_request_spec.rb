require 'rails_helper'

RSpec.describe "Sessions", type: :request do

  describe "POST /create" do
    it "returns http success" do
      post "/api/v1/login"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /logout" do
    it "returns http success" do
      delete "/api/v1/log_out"
      expect(response).to have_http_status(:success)
    end
  end

end
