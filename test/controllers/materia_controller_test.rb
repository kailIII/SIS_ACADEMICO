require 'test_helper'

class MateriaControllerTest < ActionController::TestCase
  setup do
    @materium = materia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materium" do
    assert_difference('Materium.count') do
      post :create, materium: { alias_mat: @materium.alias_mat, cod_mat: @materium.cod_mat, contenido_mat: @materium.contenido_mat, hs_mat: @materium.hs_mat, nombre_mat: @materium.nombre_mat }
    end

    assert_redirected_to materium_path(assigns(:materium))
  end

  test "should show materium" do
    get :show, id: @materium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materium
    assert_response :success
  end

  test "should update materium" do
    patch :update, id: @materium, materium: { alias_mat: @materium.alias_mat, cod_mat: @materium.cod_mat, contenido_mat: @materium.contenido_mat, hs_mat: @materium.hs_mat, nombre_mat: @materium.nombre_mat }
    assert_redirected_to materium_path(assigns(:materium))
  end

  test "should destroy materium" do
    assert_difference('Materium.count', -1) do
      delete :destroy, id: @materium
    end

    assert_redirected_to materia_path
  end
end
