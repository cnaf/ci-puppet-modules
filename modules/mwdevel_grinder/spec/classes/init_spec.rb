require 'spec_helper'
describe 'grinder' do

  context 'with defaults for all parameters' do
    it { should contain_class('grinder') }
  end
end
