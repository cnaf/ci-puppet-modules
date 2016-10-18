require 'spec_helper'
describe 'jenkins_slave' do

  context 'with defaults for all parameters' do
    it { should contain_class('jenkins_slave') }
  end
end
