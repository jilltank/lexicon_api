require 'test_helper'

class LexiconsControllerTest < ActionController::TestCase
  setup do
    @lexicon = lexicons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lexicons)
  end

  test "should create lexicon" do
    assert_difference('Lexicon.count') do
      post :create, lexicon: { auth_token: @lexicon.auth_token, category: @lexicon.category, code: @lexicon.code, description: @lexicon.description }
    end

    assert_response 201
  end

  test "should show lexicon" do
    get :show, id: @lexicon
    assert_response :success
  end

  test "should update lexicon" do
    put :update, id: @lexicon, lexicon: { auth_token: @lexicon.auth_token, category: @lexicon.category, code: @lexicon.code, description: @lexicon.description }
    assert_response 204
  end

  test "should destroy lexicon" do
    assert_difference('Lexicon.count', -1) do
      delete :destroy, id: @lexicon
    end

    assert_response 204
  end
end
