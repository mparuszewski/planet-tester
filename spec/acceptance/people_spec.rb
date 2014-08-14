require 'spec_helper'

describe 'people page' do

  before do
    visit '/people'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'PEOPLE' }
  end

  it_should_behave_like 'a website with people information'
end
