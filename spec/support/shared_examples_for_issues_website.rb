shared_examples 'a website with issues' do
  it 'has issues filter' do
    within '#main' do
      expect(page).to have_content('Issues filter')
    end
  end

  it 'has issues from at least 4 projects' do
    within '#main' do
      expect(page).to have_content('timvideos/getting-started')
      expect(page).to have_content('timvideos/hdmi2usb')
      expect(page).to have_content('timvideos/gst-switch')
      expect(page).to have_content('timvideos/streaming-system')
    end
  end

  it 'should contain at least one issue' do
    within '#main' do
      expect(all('.row.issues').length).to be >= 1
    end
  end

  it 'each issue should have creator avatar, issue body, description, title and Read more... button' do
    within '#main' do
      all('.row.issues').each do |issues|
        expect(issues).to have_content('Read more...')
        expect(issues).to have_css('img.img-circle')
        expect(issues).to have_css('.description')
        expect(issues).to have_css('h5')
        expect(issues.find('.issue-content').text).to_not be_empty
      end
    end
  end

  it 'should show issue content after click on Read more... and hide it after another click', js: true do
    within '#main' do
      random_issues = all('.row.issues').sample
      expect(random_issues.find('.issue-content').text).to_not be_empty
      random_issues.click_on('Read more...')
      expect(random_issues.find('.issue-content').text).not_to be_empty
      expect(random_issues).to have_content('Hide issue...')
      random_issues.click_on('Hide issue...')
      expect(random_issues).to have_content('Read more...')
    end
  end

  it 'should have Advanced Search button' do
    within '#main' do
      expect(page).to have_button('Advanced search')
    end
  end

  it 'should have Projects diagram button' do
    within '#main' do
      expect(page).to have_button('Projects diagram')
    end
  end

  it 'should have Search button' do
    within '#main' do
      expect(page).to have_button('Search!')
    end
  end

  it 'should have Reset button' do
    within '#main' do
      expect(page).to have_button('Reset')
    end
  end

  it 'should have input for Title' do
    within '#main' do
      expect(page).to have_field('title')
    end
  end

  it 'should have input for Body' do
    within '#main' do
      expect(page).to have_field('body')
    end
  end

  it 'should have input for Author' do
    within '#main' do
      expect(page).to have_field('author')
    end
  end

  it 'should have Assignee filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Assignee')
    end
  end

  it 'should have Assigneed? filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Assigneed?')
    end
  end

  it 'should have State filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'State')
    end
  end

  it 'should have Milestone filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Milestone')
    end
  end

  it 'should have Project filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Project')
    end
  end

  it 'should have Skill filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Skill')
    end
  end

  it 'should have Level filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Level')
    end
  end

  it 'should have Type filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Type')
    end
  end

  it 'should have Language filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Language')
    end
  end

  it 'should have Backend filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Backend')
    end
  end

  it 'should have Board filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Board')
    end
  end

  it 'should have Firmware filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Firmware')
    end
  end

  it 'should have Labels filter' do
    within '#main .issues-advanced-search' do
      expect(page).to have_css('.form-group label', text: 'Labels')
    end
  end
end
