require 'spec_helper'
describe 'gpfs' do

  context 'with defaults for all parameters' do
    it { should contain_class('gpfs') }
  end
end
