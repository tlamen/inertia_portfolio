# frozen_string_literal: true

FactoryBot.define do
  factory :project_translation do
    title { "MyString" }
    description { "MyString" }
    association :project
    association :language
  end
end
