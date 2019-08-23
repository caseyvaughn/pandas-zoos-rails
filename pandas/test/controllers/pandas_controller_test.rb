require 'test_helper'

class PandasControllerTest < ActionDispatch::IntegrationTest
  test "should get rails" do
    get pandas_rails_url
    assert_response :success
  end

  test "should get g" do
    get pandas_g_url
    assert_response :success
  end

  test "should get controller" do
    get pandas_controller_url
    assert_response :success
  end

  test "should get Zoos" do
    get pandas_Zoos_url
    assert_response :success
  end

end
