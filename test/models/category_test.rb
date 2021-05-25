require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test 'should not save without category name & user id' do
    cat = Category.new
    cat.cat_details = 'Lorem ipsum dolor sit amet, 
                            consectetur adipiscing elit.'
    assert_not cat.save, 'Saved category without name & user id'
  end
end
