require 'test_helper'

class CyclistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cyclist = cyclists(:one)
  end

  test "should get index" do
    get cyclists_url
    assert_response :success
  end

  test "should get new" do
    get new_cyclist_url
    assert_response :success
  end

  test "should create cyclist" do
    assert_difference('Cyclist.count') do
      post cyclists_url, params: { cyclist: { clave: @cyclist.clave, correo: @cyclist.correo, correocontact: @cyclist.correocontact, identificacion: @cyclist.identificacion, nombre: @cyclist.nombre, nomcontact: @cyclist.nomcontact, usuario: @cyclist.usuario } }
    end

    assert_redirected_to cyclist_url(Cyclist.last)
  end

  test "should show cyclist" do
    get cyclist_url(@cyclist)
    assert_response :success
  end

  test "should get edit" do
    get edit_cyclist_url(@cyclist)
    assert_response :success
  end

  test "should update cyclist" do
    patch cyclist_url(@cyclist), params: { cyclist: { clave: @cyclist.clave, correo: @cyclist.correo, correocontact: @cyclist.correocontact, identificacion: @cyclist.identificacion, nombre: @cyclist.nombre, nomcontact: @cyclist.nomcontact, usuario: @cyclist.usuario } }
    assert_redirected_to cyclist_url(@cyclist)
  end

  test "should destroy cyclist" do
    assert_difference('Cyclist.count', -1) do
      delete cyclist_url(@cyclist)
    end

    assert_redirected_to cyclists_url
  end
end
