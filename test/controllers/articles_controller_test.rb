require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get crete" do
    get articles_crete_url
    assert_response :success
  end

  test "should get destroy" do
    get articles_destroy_url
    assert_response :success
  end

end
