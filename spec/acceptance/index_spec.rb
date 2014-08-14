require 'spec_helper'

describe 'index page' do

  before do
    visit '/'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'NEWS' }
  end

  it_should_behave_like 'a website with news'

  it 'should have link to GSoC 2014 HDMI2USB category page' do
    within '#main' do
      expect(page).to have_link('GSOC-2014-HDMI2USB', href: '/categories/gsoc-2014-hdmi2usb', count: 1)
    end
  end

  it 'should have link to GSoC 2014 category page' do
    within '#main' do
      expect(page).to have_link('GSOC-2014', href: '/categories/gsoc-2014', count: 1)
    end
  end
end
