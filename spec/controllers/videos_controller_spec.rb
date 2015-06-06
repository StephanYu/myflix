require 'spec_helper'

describe VideosController do
  describe "GET show" do
    it "sets the @video variable for authenticated users" do
      session[:user_id] = Fabricate(:user).id
      video = Fabricate(:video)
      get :show, id: video.id
      expect(assigns(:video)).to eq(video)
    end
    it "redirects the unauthenticated user to the sign_in page" do
      video = Fabricate(:video)
      get :show, id: video.id
      expect(response).to redirect_to sign_in_path
    end
  end

  describe "POST search" do
    it "sets the @results variable for authenticated users" do
      session[:user_id] = Fabricate(:user).id
      hero = Fabricate(:video, title: "Hero")
      post :search, search_term: hero.title
      expect(assigns(:results)).to eq([hero])
    end
    it "redirects the unauthenticated user to the sign_in page" do
      video = Fabricate(:video)
      post :search, search_term: video.title
      expect(response).to redirect_to sign_in_path
    end
  end
end
