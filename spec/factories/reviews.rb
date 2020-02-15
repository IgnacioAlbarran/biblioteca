FactoryBot.define do
  factory :review do
    reviewable_type { "MyString" }
    reviewable_id { 1 }
    text { "MyString" }
  end
end
