class UsersController < ApplicationController
  def unsuscribe_newsletter
  	@user = User.find(params[:id])
  	@user.newsletter = false
  	@user.save
  end
end
