require 'spec_helper'

describe User do
  describe 'validations' do
    it { should validate_presence_of :username }
    it { should ensure_length_of(:password).is_at_least(3) }
    it { should validate_uniqueness_of(:username) }
  end
end
