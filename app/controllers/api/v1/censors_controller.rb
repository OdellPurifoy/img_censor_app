module Api
  module V1
    class CensorsController < ApplicationController
      before_action :set_censor, only: %i[show update destroy]

      # GET /censors
      def index
        @censors = Censor.all

        render json: @censors, status: 200
      end

      # GET /censors/1
      def show
        render json: @censor
      end

      # POST /censors
      def create
        @censor = Censor.new(censor_params)

        if @censor.save
          render json: @censor, status: :created
        else
          render json: @censor.errors, status: :uprocessable_entity
        end
      end

      # PATCH/PUT /censors/1
      def update
        if @censor.update(censor_params)
          render json: @censor
        else
          render json: @censor.errors, status: :unprocessable_entity
        end
      end

      # DELETE /censors/1
      def destroy
        @censor.destroy
      end

      private

      def set_censor
        @censor = Censor.find(params[:id])
      end

      def censor_params
        params.require(:censor).permit(:censor_pixel_height, :censor_pixel_width, :x_axis_location, :y_axis_location)
      end
    end
  end
end
