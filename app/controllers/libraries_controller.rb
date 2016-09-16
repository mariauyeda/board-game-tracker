class LibrariesController < ApplicationController
  def index
    #query current_user and all friends
  end

  def new
  	@games = Game.all
  	@library = Library.new
  end

  def create
	game_id = params[:library][:game_id]
	user_id = current_user.id
	@library = Library.new({:user_id => user_id, :game_id => game_id})
	if @library.save
		redirect_to user_path(current_user)
	end
  end

end
