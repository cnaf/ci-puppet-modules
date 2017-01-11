require 'spec_helper'
describe 'mwdevel_umd_repo' do

  context 'with defaults for all parameters' do
    it { should contain_class('mwdevel_umd_repo') }
  end
end
