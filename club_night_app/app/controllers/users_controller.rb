class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    
    # def index
    #     @clubs = Club.all
    # end

    def show
    end
    
    # def new
    #     @club = Club.new
    # end

    # def create
    #     Club.create(club_params)
    #     redirect_to clubs_path
    # end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to @user
    end

    def destroy
        @user.destroy
        redirect_to root_path
    end



    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :about)
    end
end
