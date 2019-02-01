FactoryBot.define do
  factory :comment do
    author { "Chuck Norris" }
    sequence(:body) { |n| "Comment body #{n}" }
  end
end