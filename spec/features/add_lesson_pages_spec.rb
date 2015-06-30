require 'rails_helper'

describe "the add a lesson process" do

  it "adds a new lesson" do
    visit sections_path
    click_on 'Add Section'
    fill_in 'Name', :with => '1337 5P34K'
    click_on 'Create Section'

    visit lessons_path
    click_on 'Add Lesson'
    fill_in 'Name', :with => 'LessonXxXx'
    fill_in 'Body', :with => 'LESSONS ARE AW350M3'
    fill_in 'Order number', :with => '5'
    select "1337 5P34K", from: "Section name"
    click_on 'Create Lesson'
    click_on 'LessonXxXx'
    expect(page).to have_content 'LessonXxXx'
    expect(page).to have_content 'LESSONS ARE AW350M3'
    expect(page).to have_content 'Lesson 5'
    expect(page).to have_content '1337 5P34K'
  end

  it "returns an error when no name is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'You done messed up'
  end

end
