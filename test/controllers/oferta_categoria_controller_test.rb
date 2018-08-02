require 'test_helper'

class OfertaCategoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oferta_categorium = oferta_categoria(:one)
  end

  test "should get index" do
    get oferta_categoria_url
    assert_response :success
  end

  test "should get new" do
    get new_oferta_categorium_url
    assert_response :success
  end

  test "should create oferta_categorium" do
    assert_difference('OfertaCategorium.count') do
      post oferta_categoria_url, params: { oferta_categorium: { categoria_id: @oferta_categorium.categoria_id, oferta_educativa_id: @oferta_categorium.oferta_educativa_id } }
    end

    assert_redirected_to oferta_categorium_url(OfertaCategorium.last)
  end

  test "should show oferta_categorium" do
    get oferta_categorium_url(@oferta_categorium)
    assert_response :success
  end

  test "should get edit" do
    get edit_oferta_categorium_url(@oferta_categorium)
    assert_response :success
  end

  test "should update oferta_categorium" do
    patch oferta_categorium_url(@oferta_categorium), params: { oferta_categorium: { categoria_id: @oferta_categorium.categoria_id, oferta_educativa_id: @oferta_categorium.oferta_educativa_id } }
    assert_redirected_to oferta_categorium_url(@oferta_categorium)
  end

  test "should destroy oferta_categorium" do
    assert_difference('OfertaCategorium.count', -1) do
      delete oferta_categorium_url(@oferta_categorium)
    end

    assert_redirected_to oferta_categoria_url
  end
end
