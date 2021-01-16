require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'columns' do
    it { should have_db_column(:email) }
      it { should have_db_column(:name) }
  end
end
