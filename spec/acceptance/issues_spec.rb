require 'spec_helper'

describe 'issues page' do

  before do
    visit '/issues'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'ISSUES' }
  end

end
