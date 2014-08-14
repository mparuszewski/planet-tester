shared_examples 'a website with news' do
  it 'should have news from developers' do
    within '#main' do
      expect(page).to have_content('News from developers', count: 2)
    end
  end

  it 'should have link to category GSoC 2014 HDMI2USB RSS and OPML feeds' do
    within '#main' do
      expect(page).to have_link('', href: '/categories/gsoc-2014-hdmi2usb/feed.xml')
      expect(page).to have_link('', href: '/categories/gsoc-2014-hdmi2usb/feed.opml')
    end
  end

  it 'should have link to category GSoC 2014 RSS and OPML feeds' do
    within '#main' do
      expect(page).to have_link('', href: '/categories/gsoc-2014/feed.xml')
      expect(page).to have_link('', href: '/categories/gsoc-2014/feed.opml')
    end
  end
end
