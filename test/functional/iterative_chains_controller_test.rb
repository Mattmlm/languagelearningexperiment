require 'test_helper'

class IterativeChainsControllerTest < ActionController::TestCase
  setup do
    @iterative_chain = iterative_chains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iterative_chains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iterative_chain" do
    assert_difference('IterativeChain.count') do
      post :create, iterative_chain: { chain: @iterative_chain.chain, num_users: @iterative_chain.num_users }
    end

    assert_redirected_to iterative_chain_path(assigns(:iterative_chain))
  end

  test "should show iterative_chain" do
    get :show, id: @iterative_chain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iterative_chain
    assert_response :success
  end

  test "should update iterative_chain" do
    put :update, id: @iterative_chain, iterative_chain: { chain: @iterative_chain.chain, num_users: @iterative_chain.num_users }
    assert_redirected_to iterative_chain_path(assigns(:iterative_chain))
  end

  test "should destroy iterative_chain" do
    assert_difference('IterativeChain.count', -1) do
      delete :destroy, id: @iterative_chain
    end

    assert_redirected_to iterative_chains_path
  end
end
