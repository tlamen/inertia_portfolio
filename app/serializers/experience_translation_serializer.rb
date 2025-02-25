# frozen_string_literal: true

class ExperienceTranslationSerializer < ApplicationSerializer
  attributes :id, :company, :role, :description, :start_date, :end_date
end