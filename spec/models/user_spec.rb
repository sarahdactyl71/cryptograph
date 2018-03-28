require 'rails_helper'

RSpec.describe User, type: :model do

  it "can be created" do
    u = User.create(username: "Dipper Pines", password: "password")

    expect(u).to be_instance_of(User)
  end
end
