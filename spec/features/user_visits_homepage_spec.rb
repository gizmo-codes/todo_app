require "rails_helper"

feature "User visits homepage" do
    scenario "successfully" do
        # Visit the landing page (Capybara)
        visit "/"
        # Equivalent to: visit "/"

        # Make sure an element exists on the page
        # RSpec - page is passed by the loaded page from Capybara above
        expect(page).to have_css 'h1', text: 'Todos'
    end
end