require 'spec_helper.rb'

feature "Hello world", js: true do
  scenario "dun nuh nuh nuh bonanza!" do
    visit '/'
    fill_in "foo", with: "bo"

    expect(page).to have_content("bonanza")
  end
end