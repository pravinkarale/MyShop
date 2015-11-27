require 'test_helper'

class SubtypesControllerTest < ActionController::TestCase
  setup do
    @subtype = subtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subtype" do
    assert_difference('Subtype.count') do
      post :create, subtype: { subtype: @subtype.subtype, typeid: @subtype.typeid }
    end

    assert_redirected_to subtype_path(assigns(:subtype))
  end

  test "should show subtype" do
    get :show, id: @subtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subtype
    assert_response :success
  end

  test "should update subtype" do
    put :update, id: @subtype, subtype: { subtype: @subtype.subtype, typeid: @subtype.typeid }
    assert_redirected_to subtype_path(assigns(:subtype))
  end

  test "should destroy subtype" do
    assert_difference('Subtype.count', -1) do
      delete :destroy, id: @subtype
    end

    assert_redirected_to subtypes_path
  end
end
