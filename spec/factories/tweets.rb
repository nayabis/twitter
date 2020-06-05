FactoryBot.define do
  factory :tweet do
  	association :user
    message {"tweet_message_default"}    
  end
end
