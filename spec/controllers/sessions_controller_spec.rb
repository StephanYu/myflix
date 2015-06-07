require 'spec_helper'

describe SessionsController do 
  describe 'GET new' do
    it 'redirects the authenticated user to the home page' do
      session[:user_id] = Fabricate(:user).id
      get :new
      expect(response).to redirect_to home_path
    end
    it 'renders the new template for the unauthenticated user' do
      get :new
      expect(response).to render_template :new
    end
  end
  
  describe 'POST create' do
    let(:user) { Fabricate(:user) }
    context 'successful user authentication' do
      before do 
        post :create, email: user.email, password: user.password
      end
      it 'adds user to session' do
        expect(session[:user_id]).to eq(user.id)
      end
      it 'alerts user with success notice' do
        expect(flash[:success]).not_to be_blank
      end
      it 'redirects user to home page' do 
        expect(response).to redirect_to home_path
      end
    end

    context 'unsuccessful user authentication' do
      before do 
        user = Fabricate(:user)
        post :create, email: user.email, password: "asdfasf"
      end
      it 'does not add the signed in user to the session' do
        expect(session[:user_id]).to be_nil
      end
      it 'alerts user with danger notice' do 
        expect(flash[:danger]).not_to be_blank
      end
      it 'redirects user to sign in page' do
        expect(response).to redirect_to sign_in_path
      end
    end
  end

  describe 'GET destroy' do
    before do 
      session[:user_id] = Fabricate(:user).id
      get :destroy
    end
    it 'sets session to nil' do 
      expect(session[:user_id]).to be_nil
    end
    it 'alerts user with danger notice' do 
      expect(flash[:danger]).not_to be_blank
    end
    it 'redirects user to the root path' do
      expect(response).to redirect_to root_path
    end
  end
end