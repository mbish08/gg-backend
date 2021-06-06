class Api::V1::PlantTypesController < ApplicationController
    
    def index
        @plant_types = PlantTypes.all
        render json: @plant_types
    end

    def create
        @plant_type = PlantType.new(plant_type_params)
        if @plant_type.save
            render json: @plant_type
        else
            render json: {error: 'Error creating new plant type'}
        end
    end

    def show
        @plant_type = PlantType.find(params[:id])
        render json: @plant_type
    end

    def destroy
        @plant_type = PlantType.find(params[:id])
        @plant_type.destroy
    end

    private

    def plant_type_params
        params.require(:plant_type).permit(:name, :fert_type, :fert_sched, :water, :soil_ph, :soil_type, :misc_info, :plant_group_id)
    end
end