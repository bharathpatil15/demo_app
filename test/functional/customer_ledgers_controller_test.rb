require 'test_helper'

class CustomerLedgersControllerTest < ActionController::TestCase
  setup do
    @customer_ledger = customer_ledgers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_ledgers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_ledger" do
    assert_difference('CustomerLedger.count') do
      post :create, customer_ledger: { bill_amt: @customer_ledger.bill_amt, customer_bill_id: @customer_ledger.customer_bill_id, customer_id: @customer_ledger.customer_id, money_receipt_id: @customer_ledger.money_receipt_id, total_amt: @customer_ledger.total_amt }
    end

    assert_redirected_to customer_ledger_path(assigns(:customer_ledger))
  end

  test "should show customer_ledger" do
    get :show, id: @customer_ledger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_ledger
    assert_response :success
  end

  test "should update customer_ledger" do
    put :update, id: @customer_ledger, customer_ledger: { bill_amt: @customer_ledger.bill_amt, customer_bill_id: @customer_ledger.customer_bill_id, customer_id: @customer_ledger.customer_id, money_receipt_id: @customer_ledger.money_receipt_id, total_amt: @customer_ledger.total_amt }
    assert_redirected_to customer_ledger_path(assigns(:customer_ledger))
  end

  test "should destroy customer_ledger" do
    assert_difference('CustomerLedger.count', -1) do
      delete :destroy, id: @customer_ledger
    end

    assert_redirected_to customer_ledgers_path
  end
end
