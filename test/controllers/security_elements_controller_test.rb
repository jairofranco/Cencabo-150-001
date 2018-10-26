require 'test_helper'

class SecurityElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @security_element = security_elements(:one)
  end

  test "should get index" do
    get security_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_security_element_url
    assert_response :success
  end

  test "should create security_element" do
    assert_difference('SecurityElement.count') do
      post security_elements_url, params: { security_element: { descripcion: @security_element.descripcion, nombre: @security_element.nombre, reglamentario: @security_element.reglamentario } }
    end

    assert_redirected_to security_element_url(SecurityElement.last)
  end

  test "should show security_element" do
    get security_element_url(@security_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_security_element_url(@security_element)
    assert_response :success
  end

  test "should update security_element" do
    patch security_element_url(@security_element), params: { security_element: { descripcion: @security_element.descripcion, nombre: @security_element.nombre, reglamentario: @security_element.reglamentario } }
    assert_redirected_to security_element_url(@security_element)
  end

  test "should destroy security_element" do
    assert_difference('SecurityElement.count', -1) do
      delete security_element_url(@security_element)
    end

    assert_redirected_to security_elements_url
  end
end
