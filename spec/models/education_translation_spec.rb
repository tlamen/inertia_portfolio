require 'rails_helper'

RSpec.describe EducationTranslation, type: :model do
  describe "factory" do
    it { expect(build(:education_translation)).to be_valid }
  end

  describe "validations" do
    context "when language is nil" do
      it { expect(build(:education_translation, language: nil)).to be_invalid }
    end

    context "when education is nil" do
      it { expect(build(:education_translation, education: nil)).to be_invalid }
    end
  end
end
