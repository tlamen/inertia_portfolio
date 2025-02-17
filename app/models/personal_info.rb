class PersonalInfo < ApplicationRecord
  has_many :personal_infos_translations, dependent: :destroy
end
