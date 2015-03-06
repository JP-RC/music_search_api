module Api
  module V1
    class ArtistsController < ApplicationController
      respond_to :json
      def show
          respond_with Artist.find(params[:id])
      end

      def create
        artist = Artist.new(artist_params)
        if artist.save
          render json: artist, status: 201, location: [:api, artist]
        else
          render json: { errors: artist.errors }, status: 422
        end
      end

      def update
        artist = Artist.find(params[:id])

        if artist.update(artist_params)
          render json: artist, status: 200, location: [:api, artist]
        else
          render json: { errors: artist.errors }, status: 422
        end
      end

      def destroy
        artist = Artist.find(params[:id])
        artist.destroy
      end

      private

      def artist_params
        params.require(:artist).permit(:id, :name)
      end
    end
  end
end
