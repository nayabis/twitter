require 'rails_helper'

RSpec.describe "Passwords", type: :request do

  describe "POST /forgot" do
    it "returns http success" do
      post "/api/v1/password/forgot"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /reset" do
    it "returns http success" do
      post "/api/v1/password/reset"
      expect(response).to have_http_status(:success)
    end
  end

end
