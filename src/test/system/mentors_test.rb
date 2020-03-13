# frozen_string_literal: true

require 'application_system_test_case'

class MentorsTest < ApplicationSystemTestCase
  setup do
    @mentor = mentors(:one)
  end

  test 'visiting the index' do
    visit mentors_url
    assert_selector 'h1', text: 'Mentors'
  end

  test 'creating a Mentor' do
    visit mentors_url
    click_on 'New Mentor'

    check 'Accept mentee' if @mentor.accept_mentee
    fill_in 'Bio', with: @mentor.bio
    fill_in 'Linkedin', with: @mentor.linkedIn
    fill_in 'User', with: @mentor.user_id
    fill_in 'Website', with: @mentor.website
    click_on 'Create Mentor'

    assert_text 'Mentor profile was successfully created'
    click_on 'Back'
  end

  test 'updating a Mentor' do
    visit mentors_url
    click_on 'Edit', match: :first

    check 'Accept mentee' if @mentor.accept_mentee
    fill_in 'Bio', with: @mentor.bio
    fill_in 'Linkedin', with: @mentor.linkedIn
    fill_in 'User', with: @mentor.user_id
    fill_in 'Website', with: @mentor.website
    click_on 'Update Mentor Profile'

    assert_text 'Mentor profile was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Mentor' do
    visit mentors_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Mentor profile was successfully destroyed'
  end
end
