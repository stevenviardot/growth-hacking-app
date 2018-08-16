require 'twitter'
require 'dotenv'
Dotenv.load
client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["Twitter_Consumer_Key"]
   config.consumer_secret     = ENV["Twitter_Consumer_Secret"]
   config.access_token        = ENV["Twitter_Access_Token"]
   config.access_token_secret = ENV["Twitter_Access_Token_Secret"]

end

p client
#FOllow les inscris
client.follow("#{user}")
#Test
