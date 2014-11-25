class SnapshotsController < ApplicationController
  before_action :set_snapshot, only: [:show, :edit, :update, :destroy]
  before_action :set_album

  # GET /snapshots/1
  def show
  end

  # GET /snapshots/new
  def new
    @snapshot = Snapshot.new
  end

  # POST /snapshots
  def create
    @snapshot = Snapshot.new(snapshot_params)
    @snapshot.album = @album

    if @snapshot.save
      if request.xhr?
        render json: { edit_path: edit_album_snapshot_path(@album, @snapshot.id) }, content_type: 'text/html'
      else
        redirect_to [@album, @snapshot]
      end
    else
      render action: 'new'
    end
  end

  # GET /snapshots/1/edit
  def edit
  end

  # PATCH/PUT /snapshots/1
  def update
    if @snapshot.update(snapshot_params)
      redirect_to [@album, @snapshot]
    else
      render action: 'edit'
    end
  end

  # DELETE /snapshots/1
  def destroy
    @snapshot.destroy
    redirect_to @album
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snapshot
      @snapshot = Snapshot.find(params[:id])
    end

    def set_album
      @album = Album.find(params[:album_id])
    end


    # Only allow a trusted parameter "white list" through.
    def snapshot_params
      params.require(:snapshot).permit(:comment, :content, :annotation)
    end
end
