class HomeController < ApplicationController
  def index
    languageOptions =
      Language.all.map do |language|
        { value: language.acronym, label: language.name }
      end
    language = Language.find_by(acronym: params[:language]) || Language.find_by("name ILIKE ?", "%#{params[:language]}%") || Language.find_by(default: true)
    render inertia: "home/index", props: {
      language: language.acronym,
      languageOptions:
    }
  end
end
