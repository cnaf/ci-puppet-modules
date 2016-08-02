require 'spec_helper'
describe 'test_ca' do

  context 'with defaults for all parameters' do
    it { should contain_class('test_ca') }
  end
end
