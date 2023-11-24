require "application_system_test_case"

class PersonsRegistersTest < ApplicationSystemTestCase
  setup do
    @persons_register = persons_registers(:one)
  end

  test "visiting the index" do
    visit persons_registers_url
    assert_selector "h1", text: "Persons Registers"
  end

  test "creating a Persons register" do
    visit persons_registers_url
    click_on "New Persons Register"

    fill_in "Cpf", with: @persons_register.cpf
    fill_in "Name", with: @persons_register.name
    fill_in "Rg", with: @persons_register.rg
    click_on "Create Persons register"

    assert_text "Persons register was successfully created"
    click_on "Back"
  end

  test "updating a Persons register" do
    visit persons_registers_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @persons_register.cpf
    fill_in "Name", with: @persons_register.name
    fill_in "Rg", with: @persons_register.rg
    click_on "Update Persons register"

    assert_text "Persons register was successfully updated"
    click_on "Back"
  end

  test "destroying a Persons register" do
    visit persons_registers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Persons register was successfully destroyed"
  end
end
