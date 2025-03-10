class ProjectTranslationSerializer < ApplicationSerializer
  attributes :title, :description, :stakeholder, :url, :public

  def stakeholder
    object.project.stakeholder
  end

  def url
    object.project.url
  end

  def public
    object.project.public
  end
end
