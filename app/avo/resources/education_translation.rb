class Avo::Resources::EducationTranslation < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :institution, as: :text
    field :title, as: :text
    field :description, as: :textarea
    field :start_date, as: :text
    field :end_date, as: :text
    field :language, as: :belongs_to
    field :education, as: :belongs_to
  end
end
