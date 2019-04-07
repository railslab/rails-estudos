require 'test_helper'

class LabControllerTest < ActionDispatch::IntegrationTest
  test "should get delay" do
    get lab_delay_url
    assert_response :success
  end

end
