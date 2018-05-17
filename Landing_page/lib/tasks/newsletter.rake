desc "Send mail per week"
task newsletter: :environment do
	ContactMailer.new.contact
end