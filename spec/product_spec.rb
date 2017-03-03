require 'rails_helper'

describe Product do

  context 'when the product has comments' do
    before do
      @product = Product.create!(name:'Futter')
      @user = User.create(email:"Butters@lotti.com", password: "foobar")
      @product.comments.create!(rating: 1, user: @user, body: "Not tasty")
      @product.comments.create!(rating: 5, user: @user, body: "delicious")
    end

    it 'returns the average of the products' do
      expect(@product.average_rating).to eq 3

    end
  end
end
