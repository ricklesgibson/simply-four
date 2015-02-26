require 'rails_helper'

RSpec.describe User, type: :model do |variable|
  it "shoudld allow a user to log in" do
    u = User.create(email: "someone@somewhere.com", password: "pass123")
    login_attempt = u.authenticate("pass123")
    #when we authenticate successfully, we get a truthy return, but it is the 
    #user object that is returned.
    expect(login_attempt).to be_an_instance_of(User)
    expect(login_attempt).to eq(u)
  end

  it "should have a flowery description when referenced by to_s" do
      u = User.create(email: "someone@somewhere.com", password: "pass123")
      expect(u.to_s).to eq("This person's email is someone@somewhere.com")
  end

end