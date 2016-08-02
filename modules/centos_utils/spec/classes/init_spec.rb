require 'spec_helper'
describe 'centos_utils' do

  context 'with defaults for all parameters' do
    it { should contain_class('centos_utils') }
  end
end
