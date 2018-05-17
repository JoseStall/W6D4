class HomeController < ApplicationController
  def hackers
  end

  def pros
  end

  def lille
  	@user = User.create(email: params[:email], newsletter: true)
  end

  def ok
    @user = User.create(email: params[:email], newsletter: true)
    if @user.save
        #redirect_to "/"
        puts "yo"
      else 
        #redirect_to "hackers"
        puts "yoyo"
        flash.now[:error] = "Déjà inscrit!"
      end
  end

end
