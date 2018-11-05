class Api::AddictionsController < ApplicationController

  def index

    @addictions = Addiction.all

    render 'index.json.jbuilder'
  end

  def create
    @addiction = Addiction.new(
                              name: params[:name]
                              )
    if @addiction.save

      render 'show.json.jbuilder'
    else
      render json: {errors: @addiction.errors.full_messages}, status: :bad_request
    end
  end

    def show
      addictions = Addiction.all
      @addiction = addictions.find(params[:id])
      render 'show.json.jbuilder'
    end

    def update
      @addiction = Addiction.find(params[:id])

      @addiction.name = params[:name] || @addiction.name

      if @addiction.save
        render 'show.json.jbuilder'
      else
        render json: {errors: @addiction.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @addiction = Addiction.find(params[:id])
      @addiction.destroy
      render json: {message: "Addiction successfully destroyed"}
    end








  # def update
  #   @addiction = addiction.find(params[:id])

  #   @addiction.name = params[:name] || @addiction.name
  #   @addiction.price = params[:price] || @addiction.price
  #   @addiction.description = params[:description] || @addiction.description

  #   if @addiction.save
  #     render 'show.json.jbuilder'
  #   else
  #     render json: {errors: @addiction.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @addiction = addiction.find(params[:id])
  #   @addiction.destroy
  #   render json: {message: "addiction successfully destroyed"}
  # end
end
