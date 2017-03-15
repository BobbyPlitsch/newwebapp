require 'rails_helper'

describe UsersController, :type => :controller do

  let(:user) { User.create!(email: "butters@lotti.com", password: "foobar", password_confirmation: "foobar") }

  describe "GET /static_pages#index" do
    context "User is logged in" do
      before do
        sign_in user
      end

      it 'loads correct user details' do
        get :show, id: user.id
        expect(response.status).to eq(302)
        expect(assigns(:user)).to eq user
      end

    end


    context "No user is logged in" do
      it 'redirects to login' do
        get :show, id: user.id
        expect(response).to redirect_to(user_session_path)
      end
    end


  end
end
