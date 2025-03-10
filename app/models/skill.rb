class Skill < ApplicationRecord
  has_many :skill_translations

  validates :rating, numericality: { less_than_or_equal_to: 5 }
end
