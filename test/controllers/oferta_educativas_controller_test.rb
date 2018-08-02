require 'test_helper'

class OfertaEducativasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oferta_educativa = oferta_educativas(:one)
  end

  test "should get index" do
    get oferta_educativas_url
    assert_response :success
  end

  test "should get new" do
    get new_oferta_educativa_url
    assert_response :success
  end

  test "should create oferta_educativa" do
    assert_difference('OfertaEducativa.count') do
      post oferta_educativas_url, params: { oferta_educativa: { categoria_ids: @oferta_educativa.categoria_ids, descripcion: @oferta_educativa.descripcion, duracion_id: @oferta_educativa.duracion_id, jornada_id: @oferta_educativa.jornada_id, nombre: @oferta_educativa.nombre, ubicacion_id: @oferta_educativa.ubicacion_id } }
    end

    assert_redirected_to oferta_educativa_url(OfertaEducativa.last)
  end

  test "should show oferta_educativa" do
    get oferta_educativa_url(@oferta_educativa)
    assert_response :success
  end

  test "should get edit" do
    get edit_oferta_educativa_url(@oferta_educativa)
    assert_response :success
  end

  test "should update oferta_educativa" do
    patch oferta_educativa_url(@oferta_educativa), params: { oferta_educativa: { categoria_ids: @oferta_educativa.categoria_ids, descripcion: @oferta_educativa.descripcion, duracion_id: @oferta_educativa.duracion_id, jornada_id: @oferta_educativa.jornada_id, nombre: @oferta_educativa.nombre, ubicacion_id: @oferta_educativa.ubicacion_id } }
    assert_redirected_to oferta_educativa_url(@oferta_educativa)
  end

  test "should destroy oferta_educativa" do
    assert_difference('OfertaEducativa.count', -1) do
      delete oferta_educativa_url(@oferta_educativa)
    end

    assert_redirected_to oferta_educativas_url
  end
end
