# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    first_name { 'Verne' }
    last_name { 'Verne' }
    email { 'pepeperez@gmail.com' }
    phone { 617010101 }
    city { 'Madrid' }
    address { 'c/Valencia nº2, 28080' }
    website {  }
  end
end

