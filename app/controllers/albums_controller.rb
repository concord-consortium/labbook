class AlbumsController < ApplicationController
  before_action :set_album

  # GET /albums
  def index
    if @album
      redirect_to @album
    else
      render
    end
  end

  # GET /albums/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      if token = album_token
        @album = Album.find_or_create_by(token: token)
      else
        @album = Album.find_by(uuid: params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def album_params
      params.require(:album).permit!
    end

    def album_token
      if params[:source] && !params[:source].empty? && params[:user_id] && !params[:user_id].empty?
        return Digest::SHA1.hexdigest("#{params[:source]}-#{params[:user_id]}")
      else
        nil
      end
    end
end
