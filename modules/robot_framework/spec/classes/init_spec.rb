require 'spec_helper'
describe 'robot_framework' do

  context 'with defaults for all parameters' do
    it { should contain_class('robot_framework') }
  end
end
