require 'spec_helper'

describe UsersController do 
  describe 'GET new' do
    it 'sets the @user variable' do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe 'POST create' do
    context 'successful user input' do
      before { post :create, user: Fabricate.attributes_for(:user)}
      
      it 'creates user' do
        expect(User.count).to eq(1)
      end
      it 'redirects the user to the sign in page' do
        expect(response).to redirect_to sign_in_path
      end
    end

    context 'unsuccessful user input' do
      before { post :create, user: { password: "password", full_name: "Stephan Yu" }}
      
      it 'does not create a User' do
        expect(User.count).to eq(0)
      end
      it 'renders the :new template' do
        expect(response).to render_template :new
      end
    end
  end
end