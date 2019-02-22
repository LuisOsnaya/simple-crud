require 'test_helper'

class AssignStudentControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get assign_student_update_url
    assert_response :success
  end

end
