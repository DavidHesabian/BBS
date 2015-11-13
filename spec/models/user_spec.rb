RSpec.describe User, type: :model do
  subject { FactoryGirl.create(:user) }

  describe 'Fixtures' do
    it 'should have valid Fixture Factory' do
      expect(subject).to be_valid
    end
  end

  describe 'attributes' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:email).of_type(:string) }
    it { is_expected.to have_db_column(:rating).of_type(:integer) }
    it { is_expected.to have_db_column(:encrypted_password).of_type(:string) }
  end

  describe 'associations' do
  end



end