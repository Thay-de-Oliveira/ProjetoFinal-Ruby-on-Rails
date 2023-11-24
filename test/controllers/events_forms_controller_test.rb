require 'test_helper'

class EventsFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @events_form = events_forms(:one)
  end

  test "should get index" do
    get events_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_events_form_url
    assert_response :success
  end

  test "should create events_form" do
    assert_difference('EventsForm.count') do
      post events_forms_url, params: { events_form: { categoryevent: @events_form.categoryevent, grouping: @events_form.grouping, species: @events_form.species, subgrouping: @events_form.subgrouping, subspecies: @events_form.subspecies } }
    end

    assert_redirected_to events_form_url(EventsForm.last)
  end

  test "should show events_form" do
    get events_form_url(@events_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_events_form_url(@events_form)
    assert_response :success
  end

  test "should update events_form" do
    patch events_form_url(@events_form), params: { events_form: { categoryevent: @events_form.categoryevent, grouping: @events_form.grouping, species: @events_form.species, subgrouping: @events_form.subgrouping, subspecies: @events_form.subspecies } }
    assert_redirected_to events_form_url(@events_form)
  end

  test "should destroy events_form" do
    assert_difference('EventsForm.count', -1) do
      delete events_form_url(@events_form)
    end

    assert_redirected_to events_forms_url
  end
end
