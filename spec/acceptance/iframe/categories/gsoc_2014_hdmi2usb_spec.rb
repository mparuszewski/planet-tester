require 'spec_helper'

describe 'iframed categories GSOC-2014-HDMI2USB page' do

  before do
    visit '/iframe/categories/gsoc-2014-hdmi2usb'
  end

  it 'should not have sidebar' do
    expect(page).to_not have_css('#sidebar')
  end

  it_should_behave_like 'a website with news list'
end
