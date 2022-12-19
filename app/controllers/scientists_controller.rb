class ScientistsController < ApplicationController

    def index 
        render json: Scientist.all
    end

    def show 
        scientist = Scientists.find_by(id: params[:id])

        if scientist
            render json: scientist
        else 
            render json: {error: "Scientist not found"}, status: :not_found
        end
        d
    end
end
