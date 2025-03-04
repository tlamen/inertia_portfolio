class ProjectTranslation < ApplicationRecord
  belongs_to :project
  belongs_to :language

  def public
    project.public
  end
end
