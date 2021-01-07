FactoryBot.define do
  factory :comment do
    author {'Kot'}
    sequence(:body) { |n| "comment body #{n}" }
  end
end
