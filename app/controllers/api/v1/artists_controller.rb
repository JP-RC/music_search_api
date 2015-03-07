class Api::V1::ArtistsController < ApplicationController
  # respond_to :json


  def index
    response = Echonest.new("beatles").video#.video_list
    render json: response
  end


  # private def artist_params
  #   params.require(:artist).permit( :video )
  # end
end
