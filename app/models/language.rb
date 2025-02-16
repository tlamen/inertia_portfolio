class Language < ApplicationRecord
  has_many :personal_infos_translations
  has_many :project_translations
  has_many :skill_translations
  has_many :education_translations
  has_many :experience_translations
end
