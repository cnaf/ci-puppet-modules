require 'spec_helper'
describe 'emi3_release' do

  context 'with defaults for all parameters' do
    it { should contain_class('emi3_release') }
  end
end
