class AddDefaultFieldToLanguage < ActiveRecord::Migration[8.0]
  def change
    add_column :languages, :default, :boolean, default: false
  end
end
