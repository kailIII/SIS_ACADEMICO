require 'test_helper'

class FacuCarrerasControllerTest < ActionController::TestCase
  setup do
    @facu_carrera = facu_carreras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facu_carreras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facu_carrera" do
    assert_difference('FacuCarrera.count') do
      post :create, facu_carrera: { carrera_id: @facu_carrera.carrera_id, facultad_id: @facu_carrera.facultad_id }
    end

    assert_redirected_to facu_carrera_path(assigns(:facu_carrera))
  end

  test "should show facu_carrera" do
    get :show, id: @facu_carrera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facu_carrera
    assert_response :success
  end

  test "should update facu_carrera" do
    patch :update, id: @facu_carrera, facu_carrera: { carrera_id: @facu_carrera.carrera_id, facultad_id: @facu_carrera.facultad_id }
    assert_redirected_to facu_carrera_path(assigns(:facu_carrera))
  end

  test "should destroy facu_carrera" do
    assert_difference('FacuCarrera.count', -1) do
      delete :destroy, id: @facu_carrera
    end

    assert_redirected_to facu_carreras_path
  end
end
