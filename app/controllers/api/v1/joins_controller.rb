class Api::V1::JoinsController < ApplicationController
  # respond_to :json


  def index
    artist_name = params[:artist_name]
     response = Echonest.new(artist_name).video, Setlist.new(artist_name).setlist
    render json: response
  end



end