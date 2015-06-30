require 'rails_helper'

describe "delete a section process" do
  it "deletes a section" do
    visit sections_path
    click_on 'Add Section'
    fill_in 'Name', :with => '1337 5P34K'
    click_on 'Create Section'
    click_on 'Delete'
    expect(page).to_not have_content('1337 5P34K')
  end
end

describe "edit a section" do
  it "edits a section" do
    visit sections_path
    click_on 'Add Section'
    fill_in 'Name', :with => '1337 5P34K'
    click_on 'Create Section'
    click_on 'Edit'
    fill_in 'Name', :with => 'testname'
    click_on 'Update Section'
    expect(page).to have_content('testname')
  end
end
