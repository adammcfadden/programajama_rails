require 'rails_helper'

describe "the add a lesson process" do

  it "adds a new lesson" do
    visit lessons_path
    click_on 'Add Lesson'
    fill_in 'Name', :with => '1337 5P34K'
    fill_in 'Body', :with => 'LESSONS ARE AW350M3'
    fill_in 'Order number', :with => '5'
    click_on 'Create Lesson'
    click_on '1337 5P34K'
    expect(page).to have_content '1337 5P34K'
    expect(page).to have_content 'LESSONS ARE AW350M3'
    expect(page).to have_content 'Lesson 5'
  end

  it "returns an error when no name is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'You done messed up'
  end

end
