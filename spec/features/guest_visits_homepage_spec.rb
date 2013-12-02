require 'spec_helper'

feature "Guest visits home page" do
  background do
    visit "/"
  end

  scenario "Guest can see the name of the site and required text" do
    expect(page).to have_content("I'm Not Your Type!")
    expect(page).to have_content("With great power comes great responsibility.")
  end

  scenario "Guest can type into a text area" do
    fill_in('Type Box', :with => 'With great power comes great responsibility.')
    expect(page).to have_content('With great power comes great responsibility.')
  end

end