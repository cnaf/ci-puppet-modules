require 'spec_helper'
describe 'storm_repos' do

  context 'with defaults for all parameters' do
    it { should contain_class('storm_repos') }
  end
end
