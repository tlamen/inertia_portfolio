# frozen_string_literal: true

FactoryBot.define do
  factory :education_translation do
    institution { "MyString" }
    title { "MyString" }
    start_date { "MyString" }
    end_date { "MyString" }
    description { "MyString" }
    association :education
    association :language
  end
end
