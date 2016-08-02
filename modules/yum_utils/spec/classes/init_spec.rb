require 'spec_helper'
describe 'yum_utils' do

  context 'with defaults for all parameters' do
    it { should contain_class('yum_utils') }
  end
end
