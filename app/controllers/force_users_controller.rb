class ForceUsersController < ApplicationController
    def create
        forceuser = ForceUser.create(force_user_params)
        if forceuser 
            render json: forceuser
        else 
            render json: {error: 'This force user could not be created'}
        end
    end

    def show 
        forceuser = ForceUser.find(params[:id])
    end

    def index 
        forceusers = ForceUser.all 
        render json: forceusers
    end

    def delete 
        forceuser = ForceUser.find(params[:id])
        forceuser.destroy 
        render json: {message: 'Force user successfully deleted.'}
    end

    private 

    def force_user_params 
        params.require(:force_user).permit(:name, :team, :gender, :race, :force_ability_id)
    end
end
