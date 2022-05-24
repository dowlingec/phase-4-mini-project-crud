class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
    end

    def create
        spice = Spice.create(new_spice_params)
        render json: spice, status: 201
    end

    private
    def new_spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
