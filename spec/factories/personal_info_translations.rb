# frozen_string_literal: true

FactoryBot.define do
  factory :personal_info_translation do
    title { "MyString" }
    description { "MyString" }
    association :personal_info
    association :language
  end
end
