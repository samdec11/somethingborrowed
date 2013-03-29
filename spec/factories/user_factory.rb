# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  image           :string(255)      default("http://designyoutrust.com/wp-content/uploads7/designfetishnophotofacebook1.jpg")
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :user, class: User do
    name                  'jane'
    email                 "jane@jane.com"
    password              "abc"
    password_confirmation "abc"
  end
end
