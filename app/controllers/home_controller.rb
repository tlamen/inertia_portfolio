class HomeController < ApplicationController
  def index
    languageOptions =
      Language.all.map do |language|
        { value: language.acronym, label: language.name }
      end
    language = Language.find_by(acronym: params[:language]) || Language.find_by("name ILIKE ?", "%#{params[:language]}%") || Language.find_by(default: true)

    personalInfo = PersonalInfoTranslation.where(language: language)
    experiences = ExperienceTranslation.where(language: language).order(id: :desc)
    render inertia: "home/index", props: {
      language: language.acronym,
      languageOptions: languageOptions,
      personalInfo: serialize(personalInfo, PersonalInfoTranslationSerializer),
      experiences: serialize(experiences, ExperienceTranslationSerializer)
    }
  end
end
