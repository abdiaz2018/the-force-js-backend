class ForceAbilitiesController < ApplicationController
    def index 
        forceabilities = ForceAbility.all 
        render json: forceabilities
    end

    def show 
        forceability = ForceAbility.find(params[:id])
        render json: forceability
    end
end
