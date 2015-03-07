class Api::V1::SongsController < ApplicationController

  def index
    response = Setlist.new("beatles").sets
    render json: response
  end
end
