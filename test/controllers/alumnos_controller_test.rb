require 'test_helper'

class AlumnosControllerTest < ActionController::TestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post :create, alumno: { apellidos_alu: @alumno.apellidos_alu, celular_alu: @alumno.celular_alu, ci_alu: @alumno.ci_alu, direccion_alu: @alumno.direccion_alu, email_alu: @alumno.email_alu, est_civil_alu: @alumno.est_civil_alu, fnac_alu: @alumno.fnac_alu, genero_alu: @alumno.genero_alu, lnac_alu: @alumno.lnac_alu, nacionalidad_alu: @alumno.nacionalidad_alu, nombres_alu: @alumno.nombres_alu, procedencia_alu: @alumno.procedencia_alu, telefono_alu: @alumno.telefono_alu }
    end

    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should show alumno" do
    get :show, id: @alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alumno
    assert_response :success
  end

  test "should update alumno" do
    patch :update, id: @alumno, alumno: { apellidos_alu: @alumno.apellidos_alu, celular_alu: @alumno.celular_alu, ci_alu: @alumno.ci_alu, direccion_alu: @alumno.direccion_alu, email_alu: @alumno.email_alu, est_civil_alu: @alumno.est_civil_alu, fnac_alu: @alumno.fnac_alu, genero_alu: @alumno.genero_alu, lnac_alu: @alumno.lnac_alu, nacionalidad_alu: @alumno.nacionalidad_alu, nombres_alu: @alumno.nombres_alu, procedencia_alu: @alumno.procedencia_alu, telefono_alu: @alumno.telefono_alu }
    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete :destroy, id: @alumno
    end

    assert_redirected_to alumnos_path
  end
end
