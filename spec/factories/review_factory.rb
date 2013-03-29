# == Schema Information
#
# Table name: reviews
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  rating          :integer
#  post_date       :date
#  text            :text
#  reviewable_id   :integer
#  reviewable_type :string(255)
#  user_id         :integer
#

FactoryGirl.define do
  factory :item_review, class: Review do
    title       'Awesome blender!'
    rating      5
    text        "This was, bar-none, the greatest blender I've ever used!"
  end

  factory :user_review, class: Review do
    title       'Nice borrower'
    rating      4
    text        "Nice guy. Returned microwave in decent condition."
  end
end
