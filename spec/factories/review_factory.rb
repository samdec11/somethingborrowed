FactoryGirl.define do
  factory :item_review, class: Review do
    title       'Awesome blender!'
    rating      5
    post_date   '2013-03-28'
    text        "This was, bar-none, the greatest blender I've ever used!"
  end

  factory :user_review, class: Review do
    title       'Nice borrower'
    rating      4
    post_date   '2013-03-27'
    text        "Nice guy. Returned microwave in decent condition."
  end
end