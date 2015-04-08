class VideoController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.all.sample
  end
end
