require 'rails_helper'

describe "the add a section process" do

  it "adds a new section" do
    visit sections_path
    click_on 'Add Section'
    fill_in 'Name', :with => '1337 5P34K'
    click_on 'Create Section'
    click_on '1337 5P34K'
    expect(page).to have_content '1337 5P34K'
  end

  it "returns an error when no name is entered" do
    visit new_section_path
    click_on 'Create Section'
    expect(page).to have_content 'You done messed up'
  end

end
