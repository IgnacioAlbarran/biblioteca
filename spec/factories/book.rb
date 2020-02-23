# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { FFaker::Name.last_name }
    author { FactoryBot.create(:author) }
    description { 'My description' }
    year { (1920..1999).to_a.sample }
    available { 'false' }
    section { 1 }
    shelf { 1 }
    order { 1 }
  end
end
