require "application_system_test_case"

class OfertaEducativasTest < ApplicationSystemTestCase
  setup do
    @oferta_educativa = oferta_educativas(:one)
  end

  test "visiting the index" do
    visit oferta_educativas_url
    assert_selector "h1", text: "Oferta Educativas"
  end

  test "creating a Oferta educativa" do
    visit oferta_educativas_url
    click_on "New Oferta Educativa"

    fill_in "Categoria Ids", with: @oferta_educativa.categoria_ids
    fill_in "Descripcion", with: @oferta_educativa.descripcion
    fill_in "Duracion", with: @oferta_educativa.duracion_id
    fill_in "Jornada", with: @oferta_educativa.jornada_id
    fill_in "Nombre", with: @oferta_educativa.nombre
    fill_in "Ubicacion", with: @oferta_educativa.ubicacion_id
    click_on "Create Oferta educativa"

    assert_text "Oferta educativa was successfully created"
    click_on "Back"
  end

  test "updating a Oferta educativa" do
    visit oferta_educativas_url
    click_on "Edit", match: :first

    fill_in "Categoria Ids", with: @oferta_educativa.categoria_ids
    fill_in "Descripcion", with: @oferta_educativa.descripcion
    fill_in "Duracion", with: @oferta_educativa.duracion_id
    fill_in "Jornada", with: @oferta_educativa.jornada_id
    fill_in "Nombre", with: @oferta_educativa.nombre
    fill_in "Ubicacion", with: @oferta_educativa.ubicacion_id
    click_on "Update Oferta educativa"

    assert_text "Oferta educativa was successfully updated"
    click_on "Back"
  end

  test "destroying a Oferta educativa" do
    visit oferta_educativas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oferta educativa was successfully destroyed"
  end
end
