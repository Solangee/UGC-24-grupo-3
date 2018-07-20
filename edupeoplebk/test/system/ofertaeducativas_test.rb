require "application_system_test_case"

class OfertaeducativasTest < ApplicationSystemTestCase
  setup do
    @ofertaeducativa = ofertaeducativas(:one)
  end

  test "visiting the index" do
    visit ofertaeducativas_url
    assert_selector "h1", text: "Ofertaeducativas"
  end

  test "creating a Ofertaeducativa" do
    visit ofertaeducativas_url
    click_on "New Ofertaeducativa"

    fill_in "Categoria", with: @ofertaeducativa.categoria_id
    fill_in "Descripcion", with: @ofertaeducativa.descripcion
    fill_in "Duracion", with: @ofertaeducativa.duracion_id
    fill_in "Institucion", with: @ofertaeducativa.institucion_id
    fill_in "Jornada", with: @ofertaeducativa.jornada_id
    fill_in "Nombre", with: @ofertaeducativa.nombre
    fill_in "Ubicacion", with: @ofertaeducativa.ubicacion_id
    click_on "Create Ofertaeducativa"

    assert_text "Ofertaeducativa was successfully created"
    click_on "Back"
  end

  test "updating a Ofertaeducativa" do
    visit ofertaeducativas_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @ofertaeducativa.categoria_id
    fill_in "Descripcion", with: @ofertaeducativa.descripcion
    fill_in "Duracion", with: @ofertaeducativa.duracion_id
    fill_in "Institucion", with: @ofertaeducativa.institucion_id
    fill_in "Jornada", with: @ofertaeducativa.jornada_id
    fill_in "Nombre", with: @ofertaeducativa.nombre
    fill_in "Ubicacion", with: @ofertaeducativa.ubicacion_id
    click_on "Update Ofertaeducativa"

    assert_text "Ofertaeducativa was successfully updated"
    click_on "Back"
  end

  test "destroying a Ofertaeducativa" do
    visit ofertaeducativas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ofertaeducativa was successfully destroyed"
  end
end
