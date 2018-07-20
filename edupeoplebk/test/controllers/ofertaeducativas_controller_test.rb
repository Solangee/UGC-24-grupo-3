require 'test_helper'

class OfertaeducativasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ofertaeducativa = ofertaeducativas(:one)
  end

  test "should get index" do
    get ofertaeducativas_url
    assert_response :success
  end

  test "should get new" do
    get new_ofertaeducativa_url
    assert_response :success
  end

  test "should create ofertaeducativa" do
    assert_difference('Ofertaeducativa.count') do
      post ofertaeducativas_url, params: { ofertaeducativa: { categoria_id: @ofertaeducativa.categoria_id, descripcion: @ofertaeducativa.descripcion, duracion_id: @ofertaeducativa.duracion_id, institucion_id: @ofertaeducativa.institucion_id, jornada_id: @ofertaeducativa.jornada_id, nombre: @ofertaeducativa.nombre, ubicacion_id: @ofertaeducativa.ubicacion_id } }
    end

    assert_redirected_to ofertaeducativa_url(Ofertaeducativa.last)
  end

  test "should show ofertaeducativa" do
    get ofertaeducativa_url(@ofertaeducativa)
    assert_response :success
  end

  test "should get edit" do
    get edit_ofertaeducativa_url(@ofertaeducativa)
    assert_response :success
  end

  test "should update ofertaeducativa" do
    patch ofertaeducativa_url(@ofertaeducativa), params: { ofertaeducativa: { categoria_id: @ofertaeducativa.categoria_id, descripcion: @ofertaeducativa.descripcion, duracion_id: @ofertaeducativa.duracion_id, institucion_id: @ofertaeducativa.institucion_id, jornada_id: @ofertaeducativa.jornada_id, nombre: @ofertaeducativa.nombre, ubicacion_id: @ofertaeducativa.ubicacion_id } }
    assert_redirected_to ofertaeducativa_url(@ofertaeducativa)
  end

  test "should destroy ofertaeducativa" do
    assert_difference('Ofertaeducativa.count', -1) do
      delete ofertaeducativa_url(@ofertaeducativa)
    end

    assert_redirected_to ofertaeducativas_url
  end
end
