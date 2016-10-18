require 'spec_helper'
describe 'oracle_repo' do

  context 'with defaults for all parameters' do
    it { should contain_class('oracle_repo') }
  end
end
