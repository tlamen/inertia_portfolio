class CreateExperienceTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :experience_translations do |t|
      t.string :company
      t.string :role
      t.string :start_date
      t.string :end_date
      t.text :description
      t.references :experience, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
