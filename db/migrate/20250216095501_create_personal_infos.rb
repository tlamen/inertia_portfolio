class CreatePersonalInfos < ActiveRecord::Migration[8.0]
  def change
    create_table :personal_infos do |t|
      t.timestamps
    end
  end
end
