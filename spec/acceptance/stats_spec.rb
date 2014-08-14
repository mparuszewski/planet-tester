require 'spec_helper'

describe 'github statistics page' do

  before do
    visit '/stats'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'GITHUB STATISTICS' }
  end

  it_should_behave_like 'a website with stats'
end
