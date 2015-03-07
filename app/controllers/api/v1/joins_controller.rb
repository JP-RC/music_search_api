class Api::V1::JoinsController < ApplicationController
  # respond_to :json


  def index
    artist_name = "beatles"
    response = [Echonest.new(artist_name).video, Setlist.new(artist_name).sets]
    render json: response
  end


  # private def artist_params
  #   params.require(:artist).permit( :video )
  # end
end
