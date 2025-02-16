require 'rails_helper'

RSpec.describe SkillTranslation, type: :model do
  describe "factory" do
    it { expect(build(:skill_translation)).to be_valid }
  end

  describe "validations" do
    context "when language is nil" do
      it { expect(build(:skill_translation, language: nil)).to be_invalid }
    end

    context "when skill is nil" do
      it { expect(build(:skill_translation, skill: nil)).to be_invalid }
    end
  end
end
