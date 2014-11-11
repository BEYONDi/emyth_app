require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Emyth App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Emyth Interview App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Emyth Interview App"
  end
  
  test "should get about" do
    get  :about
    assert_response :success
    assert_select "title", "About | Emyth Interview App"
  end
end
