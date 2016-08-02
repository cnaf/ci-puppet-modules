require 'spec_helper'
describe 'openstack_havana_repo' do

  context 'with defaults for all parameters' do
    it { should contain_class('openstack_havana_repo') }
  end
end
