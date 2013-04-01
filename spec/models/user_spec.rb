# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  image           :text
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  address         :text
#  lat             :float
#  long            :float
#  phone           :string(255)
#

require "spec_helper"

describe User do
  describe ".create" do
    it "should have an id, name, email, and image" do
      user = User.create(name:"a", email:"b", image:"c", password:"a", password_confirmation:"a")
      expect(user).to be_an_instance_of(User)
      expect(user.id).to eq 1
      expect(user.name).to eq "a"
      expect(user.email).to eq "b"
      expect(user.image).to eq "c"
    end
  end
end
