require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test 'get create category page' do
    get categories_new_path
    assert_response :success
  end

  test 'get edit category page' do
    get categories_change_path
    assert_response :success
  end

  test 'should be able to create categories' do
    post categories_create_path, params: { category: {cat_name:"Groceries",user_id:1,cat_details:"Buying groceries every Wednesday and Sunday"} }
    assert_response :redirect
  end

  test 'should be able to update categories' do
    put categories_update_path, params: { category: {cat_name:"Groceries",user_id:1,cat_details:"Buying groceries every Wednesday and Sunday"} }
    assert_response :redirect
  end
end
