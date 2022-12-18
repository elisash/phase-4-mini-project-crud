class SpicesController < ApplicationController

    def index
        spices = Spice.all 
        render json: spices
    end

    # def show
    #     spice = Spice.find(params[:id])
    #     render json: spice
    # end

    def create 
        new_spice = Spice.create(spice_params)
        render json: new_spice, status: 201
    end

    def destroy
        delete = Spice.destroy(params[:id])
        render json: delete, status: 404
    end

    def update
        spice = Spice.find(params[:id])
        spice.update(spice_params)
        render json: spice
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
