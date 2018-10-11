class Api::AddictionOccurrencesController < ApplicationController

   def index
    @addiction_occurrences = AddictionOccurrence.all   #current_user.addiction_occurences

    render 'index.json.jbuilder'
  end

  def create
    @addiction_occurrence = AddictionOccurrence.new(
                                        user_id: current_user.id,
                                        location: params[:location],
                                        circumstance: params[:circumstance],
                                        amount: params[:amount],
                                        cost: params[:cost]
                                        )
    @addiction_occurrence.craving = params[:craving] || false

    @addiction_occurrence.save
    render 'show.json.jbuilder'
  end


end
