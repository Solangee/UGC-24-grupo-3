require "application_system_test_case"

class DuracionsTest < ApplicationSystemTestCase
  setup do
    @duracion = duracions(:one)
  end

  test "visiting the index" do
    visit duracions_url
    assert_selector "h1", text: "Duracions"
  end

  test "creating a Duracion" do
    visit duracions_url
    click_on "New Duracion"

    fill_in "Nombre", with: @duracion.nombre
    click_on "Create Duracion"

    assert_text "Duracion was successfully created"
    click_on "Back"
  end

  test "updating a Duracion" do
    visit duracions_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @duracion.nombre
    click_on "Update Duracion"

    assert_text "Duracion was successfully updated"
    click_on "Back"
  end

  test "destroying a Duracion" do
    visit duracions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Duracion was successfully destroyed"
  end
end
