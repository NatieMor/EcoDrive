require "test_helper"

class TerminosCondicionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get terminos_condiciones_index_url
    assert_response :success
  end
end
