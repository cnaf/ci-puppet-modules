require 'spec_helper'
describe 'voms' do

  context 'with defaults for all parameters' do
    it { should contain_class('voms') }
  end
end
