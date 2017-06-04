
require 'rails_helper'

describe UsersController, type: :controller do

before do
    @user = FactoryGirl.create(:user)
    @user1 = FactoryGirl.create(:user)
  end

  describe "GET #show" do

    context "User is logged in" do
      before do
        it "loads the correct user details" do
          expect(response).to have_http_status(200)
          expect(assign(:user)).to eq @user
        end
      end
    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, params: { id: @user.id }
        expect(response).to have_http_status(200)
        redirect_to(fallback_location: root_path)
      end
    end

    context "cannot access second user show page" do
      it "redirects to root" do
        get :show, params: { id: @user1.id }
        expect(response).to have_http_status(200)
        redirect_to(fallback_location: root_path)
        expect(assigns(:user)).not_to eq(@user2)
        redirect_to root_url
      end
    end
  end

end
