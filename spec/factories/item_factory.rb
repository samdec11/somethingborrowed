# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :string(255)
#  image        :string(255)
#  instructions :text
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :item, class: Item do
    name        'blender'
    description "it grinds 'em up!"
  end
end
