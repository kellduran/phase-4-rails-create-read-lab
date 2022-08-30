class PlantsController < ApplicationController

    def index 
        render json: Plant.all, status: :ok
    end

    def show
       plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create 
        new_plant = Plant.create(plant_params)
        render json: new_plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end

end
