class HomeController < ApplicationController
  def hackers
  end

  def pros
  end

  def lille
  end

  def ok
    @user = User.create(email: params[:email], newsletter: true)
  end

end
