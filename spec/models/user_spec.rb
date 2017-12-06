require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_presence_of :password }
    it { is_expected.to validate_length_of :password }
    it { is_expected.to validate_confirmation_of :password }
  end
end