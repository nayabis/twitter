require 'rails_helper'

RSpec.describe "registrations", type: :request do

  describe "POST /create" do
    it "returns http success" do
      post "/sign_up"
      expect(response).to have_http_status(:success)
    end
  end
end
