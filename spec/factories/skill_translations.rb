# frozen_string_literal: true

FactoryBot.define do
  factory :skill_translation do
    title { "MyString" }
    proficiency { "MyString" }
    association :skill
    association :language
  end
end
