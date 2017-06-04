
require 'rails_helper'

  describe User do

  before do
    @user = User.create(email: "test-user@gmail.com", encrypted_password: "123456")
  end

  it "is not valid" do
    expect(User.new(email: "test-user", encrypted_password: "123456")).not_to be_valid
  end

  it "should not validate users without an email address" do
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end


end
