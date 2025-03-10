class SkillTranslationSerializer < ApplicationSerializer
  attributes :id, :title, :rating

  def rating
    object.skill.rating
  end
end