class HauntingsController < ApplicationController

    def create
        haunting = Haunting.create!(haunting_params)
        render json: haunting, status: :created
    end

    private

    def haunting_params
        params.permit(:ghost_id, :haunted_house_id)
    end

end
