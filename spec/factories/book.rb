# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    association :author

    title { FFaker::Name.last_name }
    description { 'My description' }
    year { (1920..1999).to_a.sample }
    available { 'false' }
    section { 1 }
    shelf { 1 }
    order { 1 }
  end
end
