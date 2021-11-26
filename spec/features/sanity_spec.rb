require 'spec_helper'

describe 'System', js: true do
  describe 'English' do
    before do
      visit($baseurl + '/')
    end

    it 'Responds with 200' do
      expect(page.status_code).to eq(200)
    end

    it 'Mentions "Code.org"' do
      expect(page).to have_content('Code.org')
    end

    it 'Mentions "Beginners"' do
      expect(page).to have_content('Beginners')
    end
  end

  describe 'Swedish' do
    before do
      visit($baseurl + '/sv')
    end

    it 'Responds with 200' do
      expect(page.status_code).to eq(200)
    end

    it 'Mentions "Code.org"' do
      expect(page).to have_content('Code.org')
    end

    it 'Mentions "Första gången" ' do
      expect(page).to have_content('Första gången')
    end
  end
end
