require 'test_helper'

class PlacementprocessesControllerTest < ActionController::TestCase
  setup do
    @placementprocess = placementprocesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:placementprocesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create placementprocess" do
    assert_difference('Placementprocess.count') do
      post :create, placementprocess: {  }
    end

    assert_redirected_to placementprocess_path(assigns(:placementprocess))
  end

  test "should show placementprocess" do
    get :show, id: @placementprocess
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @placementprocess
    assert_response :success
  end

  test "should update placementprocess" do
    patch :update, id: @placementprocess, placementprocess: {  }
    assert_redirected_to placementprocess_path(assigns(:placementprocess))
  end

  test "should destroy placementprocess" do
    assert_difference('Placementprocess.count', -1) do
      delete :destroy, id: @placementprocess
    end

    assert_redirected_to placementprocesses_path
  end
end
