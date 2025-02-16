require 'rails_helper'

RSpec.describe Language, type: :model do
  describe "factory" do
    it { expect(build(:language)).to be_valid }
  end
end
