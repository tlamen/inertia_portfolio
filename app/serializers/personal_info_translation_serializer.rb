# frozen_string_literal: true

class PersonalInfoTranslationSerializer < ApplicationSerializer
  attributes :id, :title, :description, :language_label, :label

  def language_label
    object.language.acronym
  end

  def label
    object.personal_info.label
  end
end