class Api::AddictionOccurrencesController < ApplicationController

    # before_action :authenticate_admin

   def index
    sort_user = params[:sort_user]
    sort_addiction = params[:addiction_id]
    sort_location = params[:location]

    @addiction_occurrences = AddictionOccurrence.all   #current_user.addiction_occurences

    if sort_user && sort_addiction && sort_location
      @addiction_occurrences = AddictionOccurrence.where(user_id: sort_user, addiction_id: sort_addiction, location: sort_location)

      elsif sort_user && sort_addiction
      @addiction_occurrences = AddictionOccurrence.where(user_id: sort_user, addiction_id: sort_addiction)

      elsif sort_user && sort_location
      @addiction_occurrences = AddictionOccurrence.where(user_id: sort_user, location: sort_location)

      elsif sort_user
      @addiction_occurrences = AddictionOccurrence.where(user_id: sort_user)

      elsif sort_addiction
      @addiction_occurrences = AddictionOccurrence.where(addiction_id: sort_addiction)

      elsif sort_location
      @addiction_occurrences = AddictionOccurrence.where(location: sort_location)
      else
        @addiction_occurrences
    end
    render 'index.json.jbuilder'
  end



  def create
    @addiction_occurrence = AddictionOccurrence.new(
                                        user_id: current_user.id,
                                        addiction_id: params[:addiction_id],
                                        location: params[:location],
                                        circumstance: params[:circumstance],
                                        amount: params[:amount] || 1,
                                        cost: params[:cost] || 0
                                        )
    @addiction_occurrence.craving = params[:craving] || false

    @addiction_occurrence.save
    render 'show.json.jbuilder'
  end
end
