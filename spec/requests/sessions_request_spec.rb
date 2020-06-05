require 'rails_helper'

RSpec.describe "Sessions", type: :request do

  describe "POST /create" do
    it "returns http success" do
      post "/login"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /logout" do
    it "returns http success" do
      delete "/log_out"
      expect(response).to have_http_status(:success)
    end
  end

end
