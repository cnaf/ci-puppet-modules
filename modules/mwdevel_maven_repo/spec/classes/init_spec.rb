require 'spec_helper'
describe 'maven_repo' do

  context 'with defaults for all parameters' do
    it { should contain_class('maven_repo') }
  end
end
