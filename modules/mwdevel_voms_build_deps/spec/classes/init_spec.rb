require 'spec_helper'
describe 'voms_build_deps' do

  context 'with defaults for all parameters' do
    it { should contain_class('voms_build_deps') }
  end
end
