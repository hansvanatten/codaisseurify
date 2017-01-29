require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'add a new song' do
    visit artist.songs_path

    fill_in 'song_title', with: 'New Song'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('New Song')
  end

  scenario 'remove song' do
    visit artist.songs_path
    click_on 'Delete song'

  end

  scenario 'remove all songs' do
    visit artist.last.songs_path
    click_on 'Delete artist'
  end
end
