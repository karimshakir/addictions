class Api::AddictionOccurrencesController < ApplicationController

    # before_action :authenticate_user, only: [:create, :graph_info]

  def index
    addiction_id_filter = params[:addiction_id] if params[:addiction_id]
    @addiction_occurrences = AddictionOccurrence.where(user_id: current_user.id).order(:created_at)

    if addiction_id_filter
      @addiction_occurrences = @addiction_occurrences.where(addiction_id: addiction_id_filter)
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
