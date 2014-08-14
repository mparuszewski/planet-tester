require 'spec_helper'

describe 'iframed issues page' do

  before do
    visit '/iframe/issues'
  end

  it 'should not have sidebar' do
    expect(page).to_not have_css('#sidebar')
  end

  it_should_behave_like 'a website with issues'
end
