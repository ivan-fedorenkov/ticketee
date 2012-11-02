FactoryGirl.define do
  factory :ticket do
    title 'A ticket'
    description 'A ticket, nothing more'
    association :user
    association :project
  end
end
