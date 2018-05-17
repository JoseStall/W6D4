desc "Bot Twitter !"
task bottwitter: :environment do
	BotTwitter.new.perform
end