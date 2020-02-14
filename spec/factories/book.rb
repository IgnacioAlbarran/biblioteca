# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    association :author

    title { FFaker::Name.last_name }
  end
end
