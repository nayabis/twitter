require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Association" do
  	it "should have_many :tweets" do
    	expect(User.reflect_on_association(:tweets).macro).to eq :has_many
  	end
  end

  describe "generate_password_token!" do
  	it "should generate password token for a user and save it" do
  		user = FactoryBot.create(:user)
  		expect(user.generate_password_token!).to eq(true)
  		expect(user.reset_password_token.present?).to eq(true)
  		expect(user.reset_password_sent_at.present?).to eq(true)
  	end
  end

  describe "password_token_valid?" do
  	it "should validate the password token" do
  		user = FactoryBot.create(:user)
  		user.generate_password_token!
  		expect(user.password_token_valid?).to eq(true)
  		user.reset_password_sent_at -= 5.hours
  		user.save
  		expect(user.password_token_valid?).to eq(false)
  	end
  end

  describe "reset_password!" do
  	it "should reset the password" do
  		user = FactoryBot.create(:user)
  		response = user.reset_password!("12345678")
  		expect(response).to eq(true)
  		expect(user.reset_password_token).to eq(nil)
  		expect(user.password).to eq("12345678")
  	end
  end
end
