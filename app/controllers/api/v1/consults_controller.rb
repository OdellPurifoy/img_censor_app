module Api
  module V1
    class ConsultsController < ApplicationController
      before_action :set_consult, only: %i[show update destroy]

      # GET /consults
      def index
        @consults = Consult.all

        render json: @consults, status: 200
      end

      # GET /consults/1
      def show
        render json: @consult
      end

      # POST /consults
      def create
        @consult = Consult.new(consult_params)

        if @consult.save
          render json: @consult, status: :created
        else
          render json: @consult.errors, status: :uprocessable_entity
        end
      end

      # PATCH/PUT /consults/1
      def update
        if @consult.update(consult_params)
          render json: @consult
        else
          render json: @consult.errors, status: :unprocessable_entity
        end
      end

      # DELETE /consults/1
      def destroy
        @consult.destroy
      end

      private

      def set_consult
        @consult = Consult.find(params[:id])
      end

      def consult_params
        params.require(:consult).permit(:questions, :specialty, :redact)
      end
    end
  end
end
