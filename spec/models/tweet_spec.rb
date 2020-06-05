require 'rails_helper'

RSpec.describe Tweet, type: :model do
  
  it "belongs to a user" do
	  tweet = Tweet.new
	  user = User.new
	  user.tweets << tweet
	  expect(tweet.user).to be user
  end
end
