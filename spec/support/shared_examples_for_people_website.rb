shared_examples 'a website with people information' do
  it 'each person should have avatar and details' do
    within '#main' do
      all('.people').each do |person|
        expect(person).to have_css('.people-details')
        expect(person).to have_css('.people-image')

        expect(person.find('.people-details').text).to_not be_empty
      end
    end
  end

  it 'there should be 5 people descriptions' do
    within '#main' do
      expect(page).to have_content('Tim Ansell - mithro')
      expect(page).to have_content('Duzy Chan - duzy')
      expect(page).to have_content('Jahanzeb Ahmad - jahanzeb')
      expect(page).to have_content('Carl Karsten - CarlFK')
      expect(page).to have_content('Ryan Verner - xfxf')
    end
  end
end
