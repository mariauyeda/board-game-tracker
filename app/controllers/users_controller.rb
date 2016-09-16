class UsersController < ApplicationController
  def index
  	@users = User.all
  	@relationships = Relationship.all
  	@relationship = Relationship.new
  	if user_signed_in?
  		@user = current_user
  	end
  end

  def show
    @user = User.find(params[:id])
  end
end
