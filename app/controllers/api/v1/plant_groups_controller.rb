class Api::V1::PlantGroupsController < ApplicationController

    def index
        
    end

    def create

    end

    def show
    
    end

    def destroy

    end

    private

    def plant_group_params
        params.require(:plant_group).permit(:name)
    end

end
