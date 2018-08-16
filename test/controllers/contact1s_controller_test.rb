require 'test_helper'

class Contact1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact1 = contact1s(:one)
  end

  test "should get index" do
    get contact1s_url
    assert_response :success
  end

  test "should get new" do
    get new_contact1_url
    assert_response :success
  end

  test "should create contact1" do
    assert_difference('Contact1.count') do
      post contact1s_url, params: { contact1: { asunto: @contact1.asunto, correo: @contact1.correo, mensaje: @contact1.mensaje, name: @contact1.name } }
    end

    assert_redirected_to contact1_url(Contact1.last)
  end

  test "should show contact1" do
    get contact1_url(@contact1)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact1_url(@contact1)
    assert_response :success
  end

  test "should update contact1" do
    patch contact1_url(@contact1), params: { contact1: { asunto: @contact1.asunto, correo: @contact1.correo, mensaje: @contact1.mensaje, name: @contact1.name } }
    assert_redirected_to contact1_url(@contact1)
  end

  test "should destroy contact1" do
    assert_difference('Contact1.count', -1) do
      delete contact1_url(@contact1)
    end

    assert_redirected_to contact1s_url
  end
end
