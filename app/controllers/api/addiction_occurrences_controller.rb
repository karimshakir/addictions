class Api::AddictionOccurrencesController < ApplicationController

    before_action :authenticate_user, only: [:create, :graph_info]

  def index
    addiction_id_filter = params[:addiction_id] if params[:addiction_id]
    unique_circumstances = params[:unique_circumstances]
    location_filter = params[:location]

    @addiction_occurrences = AddictionOccurrence.where(user_id: current_user.id).order(:created_at)  #current_user.addiction_occurences

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

  # def frequency
  #   duration = params[:duration]

  #   started_at = AddictionOccurrence.first.created_at
  #   time_diff = (Time.current - started_at)
  #   perDay = (time_diff/duration).day
  #   perWeek = (time_diff/duration).week
  #   perMonth = (time_diff/duration).month

  #   @addiction_occurrences = AddictionOccurrence.where(user_id: current_user.id)  #current_user.addiction_occurences
  #   # Occurence.where(addiction_id: 1, user_id: 1, created_at > Today - 1.week)

  #   if duration == week
  #   end

  #   render 'index.json.jbuilder'
  # end


  def create

    @addiction_occurrence = AddictionOccurrence.new(
                                        user_id: current_user.id,
                                        addiction_id: params[:addiction_id],
                                        location: params[:location],
                                        circumstance: params[:circumstance],
                                        amount: params[:amount],
                                        # cost: params[:cost],
                                        craving: params[:craving]
                                        )

    @addiction_occurrence.save
    render 'show.json.jbuilder'
  end

  def show
    render 'show.json.jbuilder'
  end



  def graph_info
    @addiction_occurrences = current_user.addiction_occurrences
    render 'graph.json.jbuilder'
  end
end
