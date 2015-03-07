class Api::V1::JoinsController < ApplicationController
  # respond_to :json


  def index
    response = [Echonest.new("beatles").video, Setlist.new("beatles").sets]
    render json: response
  end


  # private def artist_params
  #   params.require(:artist).permit( :video )
  # end
end
