class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @is_me = @user.id == current_user.id ? true : false
    end
end    