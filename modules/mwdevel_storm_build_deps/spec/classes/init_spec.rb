require 'spec_helper'
describe 'storm_build_deps' do

  context 'with defaults for all parameters' do
    it { should contain_class('storm_build_deps') }
  end
end
