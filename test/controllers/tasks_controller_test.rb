require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get pages" do
    get tasks_pages_url
    assert_response :success
  end

  test "should get index" do
    get tasks_index_url
    assert_response :success
  end

  test "should get add" do
    get tasks_add_url
    assert_response :success
  end

end
