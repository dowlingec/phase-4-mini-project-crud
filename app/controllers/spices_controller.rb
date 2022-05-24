class SpicesController < ApplicationController

    def index
        spices = Spice.all
        return render json: spices
    end

    def create
        spice = Spice.create(new_spice_params)
        return render json: spice, status: 201
    end

    def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
    end

    private
    def new_spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
