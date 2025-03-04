class HomeController < ApplicationController
  def index
    languageOptions =
      Language.all.map do |language|
        { value: language.acronym, label: language.name }
      end
    language = Language.find_by(acronym: params[:language]) || Language.find_by("name ILIKE ?", "%#{params[:language]}%") || Language.find_by(default: true)

    personalInfo = PersonalInfoTranslation.where(language: language)
    experiences = ExperienceTranslation.where(language: language).order(id: :desc)

    public_projects = ProjectTranslation.includes(:project).where(language: language, project: { public: true }).order(title: :asc)
    private_projects = ProjectTranslation.includes(:project).where(language: language, project: { public: false }).order(title: :asc)

    render inertia: "home/index", props: {
      language: language.acronym,
      languageOptions: languageOptions,
      personalInfo: serialize(personalInfo, PersonalInfoTranslationSerializer),
      experiences: serialize(experiences, ExperienceTranslationSerializer),
      public_projects: serialize(public_projects, ProjectTranslationSerializer),
      private_projects: serialize(private_projects, ProjectTranslationSerializer)
    }
  end
end
