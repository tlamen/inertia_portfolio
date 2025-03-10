class AddRatingFieldToSkills < ActiveRecord::Migration[8.0]
  def change
    add_column :skills, :rating, :integer
  end
end
