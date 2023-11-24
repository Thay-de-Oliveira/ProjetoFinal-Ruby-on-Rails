require "application_system_test_case"

class EventsFormsTest < ApplicationSystemTestCase
  setup do
    @events_form = events_forms(:one)
  end

  test "visiting the index" do
    visit events_forms_url
    assert_selector "h1", text: "Events Forms"
  end

  test "creating a Events form" do
    visit events_forms_url
    click_on "New Events Form"

    fill_in "Categoryevent", with: @events_form.categoryevent
    fill_in "Grouping", with: @events_form.grouping
    fill_in "Species", with: @events_form.species
    fill_in "Subgrouping", with: @events_form.subgrouping
    fill_in "Subspecies", with: @events_form.subspecies
    click_on "Create Events form"

    assert_text "Events form was successfully created"
    click_on "Back"
  end

  test "updating a Events form" do
    visit events_forms_url
    click_on "Edit", match: :first

    fill_in "Categoryevent", with: @events_form.categoryevent
    fill_in "Grouping", with: @events_form.grouping
    fill_in "Species", with: @events_form.species
    fill_in "Subgrouping", with: @events_form.subgrouping
    fill_in "Subspecies", with: @events_form.subspecies
    click_on "Update Events form"

    assert_text "Events form was successfully updated"
    click_on "Back"
  end

  test "destroying a Events form" do
    visit events_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Events form was successfully destroyed"
  end
end
