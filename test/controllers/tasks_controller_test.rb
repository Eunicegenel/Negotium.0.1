require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'get create category page' do
    get tasks_new_path
    assert_response :success
  end

  test 'get edit category page' do
    get tasks_change_path
    assert_response :redirect
  end

  test 'should be able to create category' do
    post tasks_create_path, params: { task: {cat_name:"Groceries",user_id:1,cat_details:"Buying groceries every Wednesday and Sunday"} }
    assert_response :redirect
  end

  test 'should be able to update category' do
    put tasks_update_path, params: { task: {cat_name:"Groceries",user_id:1,cat_details:"Buying groceries every Wednesday and Sunday"} }
    assert_response :redirect
  end

  test 'should be able to delete category' do
    delete tasks_delete_path
    assert_response :redirect
  end
end
