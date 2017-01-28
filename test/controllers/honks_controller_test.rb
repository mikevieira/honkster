require 'test_helper'

class HonksControllerTest < ActionController::TestCase
  setup do
    @honk = honks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:honks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create honk" do
    assert_difference('Honk.count') do
      post :create, honk: { content: @honk.content, user_id: @honk.user_id }
    end

    assert_redirected_to honk_path(assigns(:honk))
  end

  test "should show honk" do
    get :show, id: @honk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @honk
    assert_response :success
  end

  test "should update honk" do
    patch :update, id: @honk, honk: { content: @honk.content, user_id: @honk.user_id }
    assert_redirected_to honk_path(assigns(:honk))
  end

  test "should destroy honk" do
    assert_difference('Honk.count', -1) do
      delete :destroy, id: @honk
    end

    assert_redirected_to honks_path
  end
end
