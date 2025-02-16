class CreatePersonalInfoTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :personal_info_translations do |t|
      t.string :title
      t.text :description
      t.references :personal_info, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
