require 'twitter'
require 'dotenv'
require 'pry'
Dotenv.load('.env')

class BotTwitter
	def perform
		

		client = Twitter::REST::Client.new do | config |
		  config.consumer_key        = ENV['consumer_key']
		  config.consumer_secret     = ENV['consumer_secret']
		  config.access_token        = ENV['access_token']
		  config.access_token_secret = ENV['access_token_secret']
		end


		while true
			client.search("parcoursup -rt", lang: "fr").take(2).collect do | tweet | 
			client.update("@#{tweet.user.screen_name} Peut etre que t'aurais envie de t'initier au code gratuitement, pendant les vacances, c'est ici -> https://thplille.herokuapp.com/lille", in_reply_to_status_id: tweet.id, trim_user: true)
			puts "tweet envoyé à #{tweet.user.screen_name}"
			end
			break
		end
		break
	end
end