require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'Add Lesson'
    fill_in 'Name', :with => '1337 5P34K'
    fill_in 'Body', :with => 'LESSONS ARE AW350M3'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
    expect(page).to have_content '1337 5P34K'
end

  it "returns an error when no name is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'You done messed up'
  end

end
