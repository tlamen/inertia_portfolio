class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :stakeholder
      t.string :url

      t.timestamps
    end
  end
end
