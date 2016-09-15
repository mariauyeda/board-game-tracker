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
  def add_game_to_user
    # Need to pass games id to this
  end

  private
  def game_params
    params.require(:games).permit(:name, :text)
  end
end
