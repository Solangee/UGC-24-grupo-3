require 'test_helper'

class DuracionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duracion = duracions(:one)
  end

  test "should get index" do
    get duracions_url
    assert_response :success
  end

  test "should get new" do
    get new_duracion_url
    assert_response :success
  end

  test "should create duracion" do
    assert_difference('Duracion.count') do
      post duracions_url, params: { duracion: { nombre: @duracion.nombre } }
    end

    assert_redirected_to duracion_url(Duracion.last)
  end

  test "should show duracion" do
    get duracion_url(@duracion)
    assert_response :success
  end

  test "should get edit" do
    get edit_duracion_url(@duracion)
    assert_response :success
  end

  test "should update duracion" do
    patch duracion_url(@duracion), params: { duracion: { nombre: @duracion.nombre } }
    assert_redirected_to duracion_url(@duracion)
  end

  test "should destroy duracion" do
    assert_difference('Duracion.count', -1) do
      delete duracion_url(@duracion)
    end

    assert_redirected_to duracions_url
  end
end
