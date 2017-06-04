require 'rails_helper'

  describe Comment do

  before do
    @product = Product.create!(name: "race bike")
    @user = User.create(email: "test-user@gmail.com", encrypted_password: "123456", first_name: "Test")
    @comment = Comment.create!(body: "this is a new comment", rating: 3, product: @product, user: @user)
  end

  it "this should be invalid" do
    expect(Comment.new(body: "this is a new comment", rating: 3)).not_to be_valid
  end

  it "is not valid with rating decimal" do
    @comment.rating = 1.5
    expect(@comment).to_not be_valid
  end

  it "is not valid with rating alpha" do
    @comment.rating = "a"
    expect(@comment).to_not be_valid
  end

end
