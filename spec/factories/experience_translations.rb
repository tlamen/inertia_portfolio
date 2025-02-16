# frozen_string_literal: true

FactoryBot.define do
  factory :experience_translation do
    company { "MyString" }
    role { "MyString" }
    start_date { "MyString" }
    end_date { "MyString" }
    description { "MyString" }
    association :experience
    association :language
  end
end
