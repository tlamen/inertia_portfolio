class AddAcronymToLanguage < ActiveRecord::Migration[8.0]
  def change
    add_column :languages, :acronym, :string
  end
end
