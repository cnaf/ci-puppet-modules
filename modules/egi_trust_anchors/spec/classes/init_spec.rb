require 'spec_helper'
describe 'egi_trust_anchors' do

  context 'with defaults for all parameters' do
    it { should contain_class('egi_trust_anchors') }
  end
end
