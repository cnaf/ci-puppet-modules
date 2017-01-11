require 'spec_helper'
describe 'test_vos' do

  context 'with defaults for all parameters' do
    it { should contain_class('test_vos') }
  end
end
