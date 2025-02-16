class Avo::Resources::SkillTranslation < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :title, as: :text
    field :proficiency, as: :text
    field :language, as: :belongs_to
    field :skill, as: :belongs_to
  end
end
