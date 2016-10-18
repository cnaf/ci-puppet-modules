require 'spec_helper'
describe 'infn_ca' do

  context 'with defaults for all parameters' do
    it { should contain_class('infn_ca') }
  end
end
