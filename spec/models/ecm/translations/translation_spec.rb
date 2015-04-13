require 'spec_helper'

describe Ecm::Translations::Translation do
  describe 'validations' do
    it { should validate_presence_of :locale }
    it { should validate_presence_of :key }
    it { should validate_uniqueness_of(:key).scoped_to(:locale) }
  end
end
