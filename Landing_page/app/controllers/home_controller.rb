class HomeController < ApplicationController
  def hackers
  	puts "yo"
  	puts params[:email]
  	@user = User.create(email: params[:email], newsletter: true)
  end

  def pros
  	puts "yo"
  	puts params[:email]
  	@user = User.create(email: params[:email], newsletter: true)
  end

  def lille
  	puts "yo"
  	puts params[:email]
  	@user = User.create(email: params[:email], newsletter: true)
  end

  def ok
  	@user = User.last
  end

end
