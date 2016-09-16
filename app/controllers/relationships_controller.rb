class RelationshipsController < ApplicationController
    before_action :authenticate_user!
    def index
    	@user = current_user
    	@friends = @user.friends
    end

    def create
    	friend_id = params[:relationship][:friend_id]
    	user_id = current_user.id
    	@relationship = Relationship.new({:user_id => user_id, :friend_id => friend_id})
    	if @relationship.save
    		redirect_to users_path
    	end
    end
end
