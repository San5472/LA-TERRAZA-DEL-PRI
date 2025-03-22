require "test_helper"

class AprendizControllerTest < ActionDispatch::IntegrationTest
  test "should get estudiante" do
    get aprendiz_estudiante_url
    assert_response :success
  end
end
