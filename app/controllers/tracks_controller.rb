class TracksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    @track.user = current_user
    if @track.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def track_params
    params.require(:track).permit(
      :artist,
      :title,
      :url
    )
  end
end