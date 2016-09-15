class RelationshipsController < ApplicationController
    before_action :authenticate_user!
    def index
    	@user = current_user
    	@friends = @user.friends
    end
end
