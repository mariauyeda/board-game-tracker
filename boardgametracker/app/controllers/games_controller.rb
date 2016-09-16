class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  #below is only needed for admins
  # def new
  #   @game = Game.new
  # end

  # def create
  #   @game = Game.new(game_params)

  #   if @game.save
  #     redirect_to :action => 'index'
  #   else
  #     render :action => 'new'
  #   end
  # end

  # def edit
  # end

  # def update
  # end

  # def delete
  # end
  def add_game_to_user_new
    # Need to pass games id to this
  end

  def add_game_to_user_create
    # Need to pass games id to this
  end

  def up
    game = Game.find(params[:game_id])
    game.liked_by current_user
    game.save

    redirect_to(:back)
  end

  def down
    game = Game.find(params[:game_id])
    game.disliked_by current_user
    game.save

    redirect_to(:back)
  end

  private
  def game_params
    params.require(:games).permit(:name, :text)
  end
end
