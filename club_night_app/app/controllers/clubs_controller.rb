class ClubsController < ApplicationController
    before_action :authenticate_user!  
   before_action :set_club, only: %i[show edit update destroy]
    
    def index
        @clubs = Club.all
        def search
        @query = params[:query]
        @results = Club.where("name LIKE ?", "%#{@query}%")
      end
    end

    def show
        @is_a_member = !Membership.where(user_id: current_user.id, club_id: @club.id).empty?

        puts "IS HE A MEMBER #{@is_a_member}"
    end
    
    def new
        @club = Club.new
    end

    def create
        Club.create(club_params)
        redirect_to find_new_club_path
    end

    def edit
    end

    def update
        @club.update(club_params)
        redirect_to @club
    end

    def destroy
        @club.destroy
        redirect_to find_new_club_path
    end

    
    
      



    private
    def set_club
        @club = Club.find(params[:id])
    end

    def club_params
        params.require(:club).permit(:name, :founder, :location, :timetable)
    end
end
