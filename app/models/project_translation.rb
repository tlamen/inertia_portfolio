class ProjectTranslation < ApplicationRecord
  belongs_to :project
  belongs_to :language
end
