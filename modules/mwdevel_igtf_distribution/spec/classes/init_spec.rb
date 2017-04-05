require 'spec_helper'
describe 'mwdeve_igtf_distribution' do

  context 'with defaults for all parameters' do
    it { should contain_class('mwdeve_igtf_distribution') }
  end
end
