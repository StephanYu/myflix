class VideosController < ApplicationController
  before_action :authenticate_user

  def show
    @video = Video.find(params[:id])
  end

  def search 
    @results = Video.search_by_title(params[:search_term])
  end
end
