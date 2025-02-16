require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "factory" do
    it { expect(build(:project)).to be_valid }
  end
end
