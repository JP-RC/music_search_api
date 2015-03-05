class SongsController < ApplicationController
  def index
    render json: {message: 'Resource not found'}, status: 404
  end
end
