class CreateSkillTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :skill_translations do |t|
      t.string :title
      t.string :proficiency
      t.references :language, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
