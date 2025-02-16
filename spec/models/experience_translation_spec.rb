require 'rails_helper'

RSpec.describe ExperienceTranslation, type: :model do
  describe "factory" do
    it { expect(build(:experience_translation)).to be_valid }
  end

  describe "validations" do
    context "when language is nil" do
      it { expect(build(:experience_translation, language: nil)).to be_invalid }
    end

    context "when experience is nil" do
      it { expect(build(:experience_translation, experience: nil)).to be_invalid }
    end
  end
end
