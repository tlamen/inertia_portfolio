class AddPublicFieldToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :public, :boolean
  end
end
