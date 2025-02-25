# frozen_string_literal: true

class PersonalInfoTranslationSerializer < ApplicationSerializer
  attributes :id, :title, :description, :label

  def label
    object.personal_info.label
  end
end