require 'rails_helper'

RSpec.describe "Passwords", type: :request do

  describe "POST /forgot" do
    it "returns http success" do
      post "/password/forgot"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /reset" do
    it "returns http success" do
      post "/password/reset"
      expect(response).to have_http_status(:success)
    end
  end

end
