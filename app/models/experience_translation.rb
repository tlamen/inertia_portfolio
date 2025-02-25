class ExperienceTranslation < ApplicationRecord
  belongs_to :experience
  belongs_to :language

  validates :company, :role, :start_date, presence: true
end
