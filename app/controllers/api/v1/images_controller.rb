module Api
  module V1
    class ImagesController < ApplicationController
      before_action :set_image, only: %i[show update destroy]

      # GET /images
      def index
        @images = Image.all

        render json: @images, status: 200
      end

      # GET /images/1
      def show
        render json: @image
      end

      # POST /images
      def create
        @image = Image.new(image_params)

        if @image.save
          render json: @image, status: :created
        else
          render json: @image.errors, status: :uprocessable_entity
        end
      end

      # PATCH/PUT /images/1
      def update
        if @image.update(image_params)
          render json: @image
        else
          render json: @image.errors, status: :unprocessable_entity
        end
      end

      # DELETE /images/1
      def destroy
        @image.destroy
      end

      private

      def set_image
        @image = Image.find(params[:id])
      end

      def image_params
        params.require(:image).permit(:name, :has_censors, :img_pixel_height, :img_pixel_width, :img_type)
      end
    end
  end
end
