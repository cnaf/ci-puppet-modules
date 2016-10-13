require 'spec_helper'
describe 'mwdevel_java_setup' do

  context 'with defaults for all parameters' do
    it { should contain_class('mwdevel_java_setup') }
  end
end
