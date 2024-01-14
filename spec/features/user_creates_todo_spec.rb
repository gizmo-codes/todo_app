require "rails_helper"

feature "User creates todo" do
    scenario "successfully" do
        # Visit the landing page (Capybara)
        visit "/"

        # Click a 'add a new todo' button
        click_on "Add a new todo"
        # Fill in a form field with a value
        fill_in "Title", with: "Buy milk"
        # Click a button
        click_on "Submit"

        # Make sure an element exists on the page
        # RSpec - page is passed by the loaded page from Capybara above
        expect(page).to have_css '.todos li', text: 'Buy milk'
    end
end 