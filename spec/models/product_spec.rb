require 'rails_helper'

describe Product do

  context 'when the product has comments' do
    before do
      @product = Product.create!(name:'Futter')
      @user = User.create(email: "Butters@lotti.com", password: "foobar", password_confirmation: "foobar")
      @product.comments.create!(rating: 1, user: @user, body: "Not tasty")
      @product.comments.create!(rating: 5, user: @user, body: "delicious")
      @product.comments.create!(rating: 3, user: @user, body: "quite good")
    end

    it 'returns the average of the products' do
      expect(@product.average_rating).to eq 3

    end
  end
  context "when product has no name" do
    before do
      @product = Product.create(:description => "This is a test")
    end

    it 'is an invalid product' do
      expect(@product).not_to be_valid
    end
  end
end
