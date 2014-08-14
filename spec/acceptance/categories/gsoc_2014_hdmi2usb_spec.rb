require 'spec_helper'

describe 'categories GSOC-2014-HDMI2USB page' do

  before do
    visit '/categories/gsoc-2014-hdmi2usb'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { nil }
  end

  it_should_behave_like 'a website with news list'
end
