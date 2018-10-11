class Api::AddictionsController < ApplicationController

  def index

    @addictions = Addiction.all
    # search_term = params[:search]
    # sort_attribute = params[:sort]
    # sort_order = params[:sort_order]

    # @addictions = Addiction.all

    # if search_term
    #   @addictions = @addictions.where("name iLIKE ?", "%#{search_term}%")
    # end

    # if sort_order && sort_attribute
    #   @addictions = @addictions.order(sort_attribute => sort_order)
    # elsif sort_attribute
    #   @addictions = @addictions.order(sort_attribute)
    # end

    render 'index.json.jbuilder'
  end

  def create
    @addiction = Addiction.new(
                           name: params[:name],
                          )

  #   @product = Product.new(
  #                          name: params[:name],
  #                          price: params[:price],
  #                          description: params[:description]
  #                         )
    if @addiction.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @addiction.errors.full_messages}, status: :unprocessable_entity
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
