class Api::V1::JoinsController < ApplicationController
  # respond_to :json


  def index
    artist_name = "pink floyd"
     response = Echonest.new(artist_name).video, Setlist.new(artist_name).sets
    render json: response
  end



end
