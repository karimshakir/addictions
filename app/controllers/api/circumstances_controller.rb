class Api::CircumstancesController < ApplicationController

  def index
    @circumstances = Circumstance.all
    render 'index.json.jbuilder'
  end

  def create
    @circumstance = Circumstance.new(
                              description: params[:description]
                              )
    if @circumstance.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @circumstance.errors.full_messages}, status: :bad_request
    end
  end

    def show
      circumstances = Circumstance.all
      @circumstance = circumstances.find(params[:id])
      render 'show.json.jbuilder'
    end

    def update
      @circumstance = Circumstance.find(params[:id])
      @circumstance.description = params[:description] || @circumstance.description
      if @circumstance.save
        render 'show.json.jbuilder'
      else
        render json: {errors: @circumstance.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @circumstance = Circumstance.find(params[:id])
      @circumstance.destroy
      render json: {message: "Circumstance successfully destroyed"}
    end
end
