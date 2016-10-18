require 'spec_helper'
describe 'voms_repos' do

  context 'with defaults for all parameters' do
    it { should contain_class('voms_repos') }
  end
end
