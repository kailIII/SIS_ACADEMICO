require 'test_helper'

class AnhoLectivosControllerTest < ActionController::TestCase
  setup do
    @anho_lectivo = anho_lectivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anho_lectivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anho_lectivo" do
    assert_difference('AnhoLectivo.count') do
      post :create, anho_lectivo: { anho_lect: @anho_lectivo.anho_lect }
    end

    assert_redirected_to anho_lectivo_path(assigns(:anho_lectivo))
  end

  test "should show anho_lectivo" do
    get :show, id: @anho_lectivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anho_lectivo
    assert_response :success
  end

  test "should update anho_lectivo" do
    patch :update, id: @anho_lectivo, anho_lectivo: { anho_lect: @anho_lectivo.anho_lect }
    assert_redirected_to anho_lectivo_path(assigns(:anho_lectivo))
  end

  test "should destroy anho_lectivo" do
    assert_difference('AnhoLectivo.count', -1) do
      delete :destroy, id: @anho_lectivo
    end

    assert_redirected_to anho_lectivos_path
  end
end
