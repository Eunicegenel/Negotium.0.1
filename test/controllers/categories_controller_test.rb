require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test 'returns all categories in authorized' do
    get categories_path
    assert_response :success
  end
end
