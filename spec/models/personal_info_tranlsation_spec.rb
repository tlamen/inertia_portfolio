require 'rails_helper'

RSpec.describe PersonalInfoTranslation, type: :model do
  describe "factory" do
    it { expect(build(:personal_info_translation)).to be_valid }
  end

  describe "validations" do
    context "when language is nil" do
      it { expect(build(:personal_info_translation, language: nil)).to be_invalid }
    end

    context "when personal_info is nil" do
      it { expect(build(:personal_info_translation, personal_info: nil)).to be_invalid }
    end
  end
end
