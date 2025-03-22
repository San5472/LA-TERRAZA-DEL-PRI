require "test_helper"

class CelularsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @celular = celulars(:one)
  end

  test "should get index" do
    get celulars_url
    assert_response :success
  end

  test "should get new" do
    get new_celular_url
    assert_response :success
  end

  test "should create celular" do
    assert_difference("Celular.count") do
      post celulars_url, params: { celular: { color: @celular.color, marca: @celular.marca } }
    end

    assert_redirected_to celular_url(Celular.last)
  end

  test "should show celular" do
    get celular_url(@celular)
    assert_response :success
  end

  test "should get edit" do
    get edit_celular_url(@celular)
    assert_response :success
  end

  test "should update celular" do
    patch celular_url(@celular), params: { celular: { color: @celular.color, marca: @celular.marca } }
    assert_redirected_to celular_url(@celular)
  end

  test "should destroy celular" do
    assert_difference("Celular.count", -1) do
      delete celular_url(@celular)
    end

    assert_redirected_to celulars_url
  end
end
