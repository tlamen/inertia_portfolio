class DeleteProficiencyFieldFromSkillTranslations < ActiveRecord::Migration[8.0]
  def change
    remove_column :skill_translations, :proficiency
  end
end
