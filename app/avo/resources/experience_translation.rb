class Avo::Resources::ExperienceTranslation < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  
  def fields
    field :id, as: :id
    field :company, as: :text
    field :role, as: :text
    field :start_date, as: :text
    field :end_date, as: :text
    field :description, as: :textarea
    field :experience, as: :belongs_to
    field :language, as: :belongs_to
  end
end


