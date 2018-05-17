class WeeklyNewsletter 
	def perform
		@users = User.where(newsletter: true)
		news = []
		@users.each do |user|
			news << {'Email'=> user.email,'Name'=> 'cool'}
		end

		Mailjet::Send.create(messages:[{
			'From'=> {
				'Email'=> 'thplille@gmail.com',
				'Name'=> 'Guillaume'
			},
			'To'=> {'Email'=> 'ampuero.pierre@gmail.com','Name'=> 'cool'},
			'Subject'=> 'Newsletter de la bombe',
			'TextPart'=> 'Voila ',
			'HTMLPart'=> "<h1>Newsletter The Hacking Project </h1>
			<h2> Salut, comment ça va cette semaine? </h2>
			<p>N'oublie pas d'aller checker le site <strong>de The Hacking Project </a></strong> pour t'inscrire à la prochaine session, apprendre à coder gratuitement en 3 mois et changer de vie!</p>

			<p> Pour te désinscrire de la newsletter, .</p>"
		}]
		)
	end
end


