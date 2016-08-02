require 'spec_helper'
describe 'base_build_env' do

  context 'with defaults for all parameters' do
    it { should contain_class('base_build_env') }
  end
end
