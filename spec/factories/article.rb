FactoryBot.define do
  factory :article do
    user {build(:user)}
    title {'Article title'}
    text {'Article text'}

    factory :article_with_comments do
      transient do
        comment_ct {3}
      end
      after :create do |article, evaluator|
        create_list :comment, evaluator.comment_ct, article: article
      end
    end
  end
end
