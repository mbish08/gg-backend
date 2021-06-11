class Api::V1::PlantTypesController < ApplicationController
    
    before_action :set_plant_group

    def index
        # byebug
        # if @plant_group
        #     @plant_types = @plant_group.plant_types
        # else
            @plant_types = PlantType.all
        # end
        render json: @plant_types
    end

    def create
        @plant_type = @plant_group.plant_types.build(plant_type_params)
        if @plant_type.save
            render json: @plant_group
        else
            render json: {error: 'Error creating new plant type'}
        end
        # original - refactored to add group logic
        # @plant_type = PlantType.new(plant_type_params)
        # if @plant_type.save
        #     render json: @plant_type
        # else
        #     render json: {error: 'Error creating new plant type'}
        # end
    end

    def show
        @plant_type = PlantType.find(params[:id])
        render json: @plant_type
    end

    def destroy
        plant_type = PlantType.find(params[:id])
        plant_group = PlantGroup.find(plant_type.plant_group_id)
        plant_type.destroy
        render json: plant_group
    end

    private

    def set_plant_group
        # byebug
        @plant_group = PlantGroup.find(params[:plant_group_id])
    end

    def plant_type_params
        params.require(:plant_type).permit(:name, :fert_type, :fert_sched, :water, :soil_ph, :soil_type, :misc_info, :plant_group_id)
    end
end