require 'test_helper'

class FuncionariosControllerTest < ActionController::TestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcionarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post :create, funcionario: { apellidos_fun: @funcionario.apellidos_fun, celular_fun: @funcionario.celular_fun, ci_fun: @funcionario.ci_fun, direccion_fun: @funcionario.direccion_fun, email_fun: @funcionario.email_fun, especialidad_fun: @funcionario.especialidad_fun, est_civil_fun: @funcionario.est_civil_fun, fnac_fun: @funcionario.fnac_fun, genero_fun: @funcionario.genero_fun, lnac_fun: @funcionario.lnac_fun, nacionalidad_fun: @funcionario.nacionalidad_fun, nombres_fun: @funcionario.nombres_fun, telefono_fun: @funcionario.telefono_fun }
    end

    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should show funcionario" do
    get :show, id: @funcionario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funcionario
    assert_response :success
  end

  test "should update funcionario" do
    patch :update, id: @funcionario, funcionario: { apellidos_fun: @funcionario.apellidos_fun, celular_fun: @funcionario.celular_fun, ci_fun: @funcionario.ci_fun, direccion_fun: @funcionario.direccion_fun, email_fun: @funcionario.email_fun, especialidad_fun: @funcionario.especialidad_fun, est_civil_fun: @funcionario.est_civil_fun, fnac_fun: @funcionario.fnac_fun, genero_fun: @funcionario.genero_fun, lnac_fun: @funcionario.lnac_fun, nacionalidad_fun: @funcionario.nacionalidad_fun, nombres_fun: @funcionario.nombres_fun, telefono_fun: @funcionario.telefono_fun }
    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete :destroy, id: @funcionario
    end

    assert_redirected_to funcionarios_path
  end
end
