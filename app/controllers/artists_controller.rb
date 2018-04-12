class ArtistsController < ApplicationController

    def create
        @artist = Artist.new(artist_params)
        raise @artist.songs.inspect
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :gender)
    end
end
