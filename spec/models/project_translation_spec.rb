require 'rails_helper'

RSpec.describe ProjectTranslation, type: :model do
  describe "factory" do
    it { expect(build(:project_translation)).to be_valid }
  end

  describe "validations" do
    context "when language is nil" do
      it { expect(build(:project_translation, language: nil)).to be_invalid }
    end

    context "when project is nil" do
      it { expect(build(:project_translation, project: nil)).to be_invalid }
    end
  end
end
