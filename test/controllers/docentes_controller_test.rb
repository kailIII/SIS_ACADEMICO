require 'test_helper'

class DocentesControllerTest < ActionController::TestCase
  setup do
    @docente = docentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docente" do
    assert_difference('Docente.count') do
      post :create, docente: { apellido_doc: @docente.apellido_doc, celular_doc: @docente.celular_doc, ci_doc: @docente.ci_doc, direccion_doc: @docente.direccion_doc, email_doc: @docente.email_doc, especialidad_doc: @docente.especialidad_doc, est_civil_doc: @docente.est_civil_doc, fnac_doc: @docente.fnac_doc, genero_doc: @docente.genero_doc, lnac_doc: @docente.lnac_doc, nacionalidad_doc: @docente.nacionalidad_doc, nombre_doc: @docente.nombre_doc, telefono_doc: @docente.telefono_doc }
    end

    assert_redirected_to docente_path(assigns(:docente))
  end

  test "should show docente" do
    get :show, id: @docente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @docente
    assert_response :success
  end

  test "should update docente" do
    patch :update, id: @docente, docente: { apellido_doc: @docente.apellido_doc, celular_doc: @docente.celular_doc, ci_doc: @docente.ci_doc, direccion_doc: @docente.direccion_doc, email_doc: @docente.email_doc, especialidad_doc: @docente.especialidad_doc, est_civil_doc: @docente.est_civil_doc, fnac_doc: @docente.fnac_doc, genero_doc: @docente.genero_doc, lnac_doc: @docente.lnac_doc, nacionalidad_doc: @docente.nacionalidad_doc, nombre_doc: @docente.nombre_doc, telefono_doc: @docente.telefono_doc }
    assert_redirected_to docente_path(assigns(:docente))
  end

  test "should destroy docente" do
    assert_difference('Docente.count', -1) do
      delete :destroy, id: @docente
    end

    assert_redirected_to docentes_path
  end
end
