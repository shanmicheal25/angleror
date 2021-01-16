require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'columns' do
    it { should have_db_column(:email) }
      it { should have_db_column(:name) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email)}
    it { is_expected.to validate_presence_of(:name)}
  end
end
