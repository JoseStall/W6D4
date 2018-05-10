require 'twitter'
require 'dotenv'
require 'pry'
Dotenv.load('.env')

client = Twitter::REST::Client.new do | config |
  config.consumer_key        = ENV['consuTwitter']
  config.consumer_secret     = ENV['secretApp']
  config.access_token        = ENV['persoToken']
  config.access_token_secret = ENV['secretToken']
end

client.search("parcoursup -rt", lang: "fr").take(100).collect do | tweet | 

client.update("@#{tweet.user.screen_name}   https://hidden-sierra-91449.herokuapp.com/home/hackers", in_reply_to_status_id: tweet.id, trim_user: true)
sleep 120
end



