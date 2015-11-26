require 'test_helper'

class FrontpagesControllerTest < ActionController::TestCase

  test "show index" do
    FactoryGirl.create(:frontpage)
    get :index
    assert_response :success
  end
end
