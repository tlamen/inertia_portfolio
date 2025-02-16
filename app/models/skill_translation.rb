class SkillTranslation < ApplicationRecord
  belongs_to :language
  belongs_to :skill
end
