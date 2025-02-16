class CreateEducationTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :education_translations do |t|
      t.string :institution
      t.string :title
      t.text :description
      t.string :start_date
      t.string :end_date
      t.references :language, null: false, foreign_key: true
      t.references :education, null: false, foreign_key: true

      t.timestamps
    end
  end
end
