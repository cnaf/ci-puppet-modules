require 'spec_helper'
describe 'mwdevel_test_ca_policies' do

  context 'with defaults for all parameters' do
    it { should contain_class('mwdevel_test_ca_policies') }
  end
end
