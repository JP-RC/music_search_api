class Api::V1::JoinsController < ApplicationController
  # respond_to :json
  protect_from_forgery with: :null_session

  def index
    artist_name = params[:artist_name]
    results = params[:results]
     response = Echonest.new(artist_name, results).video, Setlist.new(artist_name).setlist
    render json: response
  end
end
