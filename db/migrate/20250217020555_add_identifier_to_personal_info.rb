class AddIdentifierToPersonalInfo < ActiveRecord::Migration[8.0]
  def change
    add_column :personal_infos, :label, :string
  end
end
