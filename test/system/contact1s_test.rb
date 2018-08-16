require "application_system_test_case"

class Contact1sTest < ApplicationSystemTestCase
  setup do
    @contact1 = contact1s(:one)
  end

  test "visiting the index" do
    visit contact1s_url
    assert_selector "h1", text: "Contact1s"
  end

  test "creating a Contact1" do
    visit contact1s_url
    click_on "New Contact1"

    fill_in "Asunto", with: @contact1.asunto
    fill_in "Correo", with: @contact1.correo
    fill_in "Mensaje", with: @contact1.mensaje
    fill_in "Name", with: @contact1.name
    click_on "Create Contact1"

    assert_text "Contact1 was successfully created"
    click_on "Back"
  end

  test "updating a Contact1" do
    visit contact1s_url
    click_on "Edit", match: :first

    fill_in "Asunto", with: @contact1.asunto
    fill_in "Correo", with: @contact1.correo
    fill_in "Mensaje", with: @contact1.mensaje
    fill_in "Name", with: @contact1.name
    click_on "Update Contact1"

    assert_text "Contact1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact1" do
    visit contact1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact1 was successfully destroyed"
  end
end
