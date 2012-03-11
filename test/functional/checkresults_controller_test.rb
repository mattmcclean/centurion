require 'test_helper'

class CheckresultsControllerTest < ActionController::TestCase
  setup do
    @checkresult = checkresults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checkresults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checkresult" do
    assert_difference('Checkresult.count') do
      post :create, checkresult: @checkresult.attributes
    end

    assert_redirected_to checkresult_path(assigns(:checkresult))
  end

  test "should show checkresult" do
    get :show, id: @checkresult
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checkresult
    assert_response :success
  end

  test "should update checkresult" do
    put :update, id: @checkresult, checkresult: @checkresult.attributes
    assert_redirected_to checkresult_path(assigns(:checkresult))
  end

  test "should destroy checkresult" do
    assert_difference('Checkresult.count', -1) do
      delete :destroy, id: @checkresult
    end

    assert_redirected_to checkresults_path
  end
end
