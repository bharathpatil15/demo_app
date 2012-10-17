require 'test_helper'

class CustomerBillsControllerTest < ActionController::TestCase
  setup do
    @customer_bill = customer_bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_bill" do
    assert_difference('CustomerBill.count') do
      post :create, customer_bill: { customer_id: @customer_bill.customer_id, total_value: @customer_bill.total_value }
    end

    assert_redirected_to customer_bill_path(assigns(:customer_bill))
  end

  test "should show customer_bill" do
    get :show, id: @customer_bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_bill
    assert_response :success
  end

  test "should update customer_bill" do
    put :update, id: @customer_bill, customer_bill: { customer_id: @customer_bill.customer_id, total_value: @customer_bill.total_value }
    assert_redirected_to customer_bill_path(assigns(:customer_bill))
  end

  test "should destroy customer_bill" do
    assert_difference('CustomerBill.count', -1) do
      delete :destroy, id: @customer_bill
    end

    assert_redirected_to customer_bills_path
  end
end
