require 'spec_helper'
describe 'router' do

  context 'with defaults for all parameters' do
    it { should contain_class('router') }
  end
end
