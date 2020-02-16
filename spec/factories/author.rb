# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    email { FFaker::Internet.email }

    trait :complete_address do
      address { 'c/Valencia nº2, 28080' }
      city { 'Madrid' }
    end

    trait :contact_data do
      phone { 617010101 }
      website {  }
    end

    factory :author_full_data, traits: [:complete_address, :contact_data]
  end
end
