class Api::V1::PlantTypesController < ApplicationController
    
    def index
        
    end

    def create

    end

    def show
    
    end

    def destroy

    end

    private

    def plant_type_params
        params.require(:plant_type).permit(:name, :fert_type, :fert_sched, :water, :soil_ph, :soil_type, :misc_info, :plant_group_id)
    end
end