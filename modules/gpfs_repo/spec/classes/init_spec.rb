require 'spec_helper'
describe 'gpfs_repo' do

  context 'with defaults for all parameters' do
    it { should contain_class('gpfs_repo') }
  end
end
