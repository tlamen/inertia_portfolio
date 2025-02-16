class CreateProjectTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :project_translations do |t|
      t.string :title
      t.text :description
      t.references :project, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
