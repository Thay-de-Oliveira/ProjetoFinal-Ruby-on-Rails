require 'test_helper'

class PersonsRegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @persons_register = persons_registers(:one)
  end

  test "should get index" do
    get persons_registers_url
    assert_response :success
  end

  test "should get new" do
    get new_persons_register_url
    assert_response :success
  end

  test "should create persons_register" do
    assert_difference('PersonsRegister.count') do
      post persons_registers_url, params: { persons_register: { cpf: @persons_register.cpf, name: @persons_register.name, rg: @persons_register.rg } }
    end

    assert_redirected_to persons_register_url(PersonsRegister.last)
  end

  test "should show persons_register" do
    get persons_register_url(@persons_register)
    assert_response :success
  end

  test "should get edit" do
    get edit_persons_register_url(@persons_register)
    assert_response :success
  end

  test "should update persons_register" do
    patch persons_register_url(@persons_register), params: { persons_register: { cpf: @persons_register.cpf, name: @persons_register.name, rg: @persons_register.rg } }
    assert_redirected_to persons_register_url(@persons_register)
  end

  test "should destroy persons_register" do
    assert_difference('PersonsRegister.count', -1) do
      delete persons_register_url(@persons_register)
    end

    assert_redirected_to persons_registers_url
  end
end
