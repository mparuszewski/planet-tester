require 'spec_helper'

describe 'github statistics page' do

  before do
    visit '/stats'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'GITHUB STATISTICS' }
  end

  it 'should contain statistics for at least 5 projects' do
    within '#main' do
      expect(page).to have_content('timvideos/streaming-system')
      expect(page).to have_content('timvideos/gst-switch')
      expect(page).to have_content('timvideos/hdmi2usb')
      expect(page).to have_content('timvideos/getting-started')
      expect(page).to have_content('timvideos/planet')
    end
  end

  it 'each project should have 5 specific charts' do
    within '#main' do
      all('.panel').each do |project|
        expect(project).to have_content('Contributors activity')
        expect(project).to have_content('Commits activity statistics')
        expect(project).to have_content('Code frequency statistics')
        expect(project).to have_content('Commits per weekday')
        expect(project).to have_content('Commits per hour')

        expect(project).to have_css('.pie-chart .highcharts-container')
        expect(project).to have_css('.commit-activity .highcharts-container')
        expect(project).to have_css('.code-frequency .highcharts-container')
        expect(project).to have_css('.commits-per-weekday .highcharts-container')
        expect(project).to have_css('.commits-per-hour .highcharts-container')
      end
    end
  end
end
