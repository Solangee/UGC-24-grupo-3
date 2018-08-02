require "application_system_test_case"

class OfertaCategoriaTest < ApplicationSystemTestCase
  setup do
    @oferta_categorium = oferta_categoria(:one)
  end

  test "visiting the index" do
    visit oferta_categoria_url
    assert_selector "h1", text: "Oferta Categoria"
  end

  test "creating a Oferta categorium" do
    visit oferta_categoria_url
    click_on "New Oferta Categorium"

    fill_in "Categoria", with: @oferta_categorium.categoria_id
    fill_in "Oferta Educativa", with: @oferta_categorium.oferta_educativa_id
    click_on "Create Oferta categorium"

    assert_text "Oferta categorium was successfully created"
    click_on "Back"
  end

  test "updating a Oferta categorium" do
    visit oferta_categoria_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @oferta_categorium.categoria_id
    fill_in "Oferta Educativa", with: @oferta_categorium.oferta_educativa_id
    click_on "Update Oferta categorium"

    assert_text "Oferta categorium was successfully updated"
    click_on "Back"
  end

  test "destroying a Oferta categorium" do
    visit oferta_categoria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oferta categorium was successfully destroyed"
  end
end
