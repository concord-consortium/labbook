class AlbumsController < ApplicationController
  layout 'report', only: [:report]

  before_action :set_album, except: [:replace_all_snapshots]
  skip_before_filter  :verify_authenticity_token, only: [:replace_all_snapshots]

  # GET /albums
  def index
    if @album
      if params[:todo] && params[:todo] == "new"
        redirect_to new_album_snapshot_path(@album)
      elsif params[:todo] && params[:todo] == "create" && params[:source_url]
        # Create a snapshot from the source url
        @snapshot = Snapshot.create!(content_remote_url: params[:source_url], comment: "", album: @album) rescue nil
        # Redirect to the edit page for that snapshot
        if @snapshot
          redirect_to edit_album_snapshot_path(@album, @snapshot)
        else
          redirect_to @album
        end
      elsif params[:todo] && params[:todo] == "report"
        redirect_to report_album_path(@album)
      else
        redirect_to @album
      end
    else
      render
    end
  end

  # GET /albums/1
  def show
  end

  # GET albums/1/report
  def report
  end

  # POST albums/replace_all_snapshots
  # params:
  #   (album defined by source and user_id)
  #   src_source
  #   src_user_id
  #   dst_source
  #   dst_user_id
  # Replaces content of 'dst' album with content of 'src' album.
  def replace_all_snapshots
    src_token = album_token('src_')
    dst_token = album_token('dst_')
    src_album = Album.find_by(token: src_token)
    if src_token.blank? || dst_token.blank? || src_album.nil?
      render nothing: true, status: 400 and return
    end
    # Source album needs to be present, destination can be dynamically created.
    dst_album = Album.find_or_create_by(token: dst_token)
    dst_album.replace_all_snapshots(src_album)
    render nothing: true, status: 200
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

    def album_token(prefix = nil)
      source = "#{prefix}source"
      user_id = "#{prefix}user_id"
      if params[source].present? && params[user_id].present?
        Album.token(params[source], params[user_id])
      else
        nil
      end
    end
end
