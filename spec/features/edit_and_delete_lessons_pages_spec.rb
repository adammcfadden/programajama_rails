require 'rails_helper'

describe "delete a lesson process" do
  it "deletes a lesson" do
    visit lessons_path
    click_on 'Add Lesson'
    fill_in 'Name', :with => '1337 5P34K'
    fill_in 'Body', :with => 'LESSONS ARE AW350M3'
    fill_in 'Order number', :with => '5'
    click_on 'Create Lesson'
    click_on 'Delete'
    expect(page).to_not have_content('1337 5P34K')
  end
end

describe "edit a lesson" do
  it "edits a lesson" do
    visit lessons_path
    click_on 'Add Lesson'
    fill_in 'Name', :with => '1337 5P34K'
    fill_in 'Body', :with => 'LESSONS ARE AW350M3'
    fill_in 'Order number', :with => '5'
    click_on 'Create Lesson'
    click_on 'Edit'
    fill_in 'Name', :with => 'testname'
    fill_in 'Body', :with => 'lalalalalalala'
    fill_in 'Order number', :with => '3'
    click_on 'Update Lesson'
    expect(page).to have_content('testname')
  end
end
