class Api::AddictionOccurrencesController < ApplicationController

    before_action :authenticate_user, only: [:create]

  def index
    addiction_id_filter = params[:addiction_id] if params[:addiction_id]
    unique_circumstances = params[:unique_circumstances]
    location_filter = params[:location]

    @addiction_occurrences = AddictionOccurrence.where(user_id: current_user.id)  #current_user.addiction_occurences

    if addiction_id_filter && location_filter
      @addiction_occurrences = @addiction_occurrences.where(addiction_id: addiction_id_filter, location: location_filter)

    elsif addiction_id_filter && unique_circumstances
      @addiction_occurrences = @addiction_occurrences.where(addiction_id: addiction_id_filter).uniq {|addiction_occurrence| addiction_occurrence.circumstance}

    elsif addiction_id_filter
      @addiction_occurrences = @addiction_occurrences.where(addiction_id: addiction_id_filter)

    elsif location_filter
      @addiction_occurrences = @addiction_occurrences.where(location: location_filter)
    end

    render 'index.json.jbuilder'
  end



  def create

    @addiction_occurrence = AddictionOccurrence.new(
                                        user_id: current_user.id,
                                        addiction_id: params[:addiction_id],
                                        location: params[:location],
                                        circumstance: params[:circumstance],
                                        amount: params[:amount],
                                        cost: params[:cost],
                                        craving: params[:craving]
                                        )

    @addiction_occurrence.save
    render 'show.json.jbuilder'
  end
end
