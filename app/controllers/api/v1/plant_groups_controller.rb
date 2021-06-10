class Api::V1::PlantGroupsController < ApplicationController

    def index
        @plant_groups = PlantGroup.all
        render json: @plant_groups
    end

    def create
       @plant_group = PlantGroup.new(plant_group_params)
        if @plant_group.save
            render json: @plant_group
        else
            render json: {error: 'Error creating new plant group'}
        end
    end

    def show
        @plant_group = PlantGroup.find(params[:id])
        render json: @plant_group
    end

    def destroy
        @plant_group = PlantGroup.find(params[:id])
        @plant_group.destroy
    end

    private

    def plant_group_params
        params.require(:plant_group).permit(:name)
    end

end
