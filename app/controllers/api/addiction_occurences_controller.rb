class Api::AddictionOccurencesController < ApplicationController

   def index
    @addiction_occurences = current_user.addiction_occurences

    render 'index.json.jbuilder'
  end

  def create
    @addiction_occurence = AddictionOccurrence.new(
                                        user_id: current_user.id,
                                        location: params[:location],
                                        circumstance: params[:circumstance],
                                        amount: params[:amount],
                                        cost: params[:cost]
                                        )
    @addiction_occurence.craving = params[:craving] || false

    @addiction_occurence.save
    render 'show.json.jbuilder'
  end


end
