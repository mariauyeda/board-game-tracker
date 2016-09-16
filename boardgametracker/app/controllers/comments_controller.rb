class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    puts params
    if @comment.save
      # TODO Change redirect_to game show page
      redirect_to(:back)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def up
    comment = Comment.find(params[:comment_id])
    comment.liked_by current_user
    comment.save

    redirect_to(:back)
  end

  def down
    comment = Comment.find(params[:comment_id])
    comment.disliked_by current_user
    comment.save

    redirect_to(:back)
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :game_id)
    end
end
