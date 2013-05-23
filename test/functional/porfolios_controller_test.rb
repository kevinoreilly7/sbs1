require 'test_helper'

class PorfoliosControllerTest < ActionController::TestCase
  setup do
    @porfolio = porfolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porfolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porfolio" do
    assert_difference('Porfolio.count') do
      post :create, porfolio: { created_on: @porfolio.created_on, location: @porfolio.location, monthly_price: @porfolio.monthly_price, profile_id: @porfolio.profile_id, sf_amount: @porfolio.sf_amount, sf_price: @porfolio.sf_price, updated_on: @porfolio.updated_on }
    end

    assert_redirected_to porfolio_path(assigns(:porfolio))
  end

  test "should show porfolio" do
    get :show, id: @porfolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porfolio
    assert_response :success
  end

  test "should update porfolio" do
    put :update, id: @porfolio, porfolio: { created_on: @porfolio.created_on, location: @porfolio.location, monthly_price: @porfolio.monthly_price, profile_id: @porfolio.profile_id, sf_amount: @porfolio.sf_amount, sf_price: @porfolio.sf_price, updated_on: @porfolio.updated_on }
    assert_redirected_to porfolio_path(assigns(:porfolio))
  end

  test "should destroy porfolio" do
    assert_difference('Porfolio.count', -1) do
      delete :destroy, id: @porfolio
    end

    assert_redirected_to porfolios_path
  end
end
