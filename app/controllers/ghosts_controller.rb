class GhostsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :ghost_not_found

    def index
        ghosts = Ghost.all
        render json: ghosts
    end

    def show
        ghost = Ghost.find(params[:id])
        render json: ghost, serializer: GhostWithHauntedHousesSerializer
    end

    def destroy
        ghost = Ghost.find(params[:id])
        ghost.destroy
        head :no_content
    end

    private

    def ghost_not_found
        render json: { error: "Ghost not found" }, status: :not_found
    end

end
