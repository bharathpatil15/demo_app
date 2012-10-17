require 'test_helper'

class MoneyReceiptsControllerTest < ActionController::TestCase
  setup do
    @money_receipt = money_receipts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:money_receipts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create money_receipt" do
    assert_difference('MoneyReceipt.count') do
      post :create, money_receipt: { dr_amt: @money_receipt.dr_amt }
    end

    assert_redirected_to money_receipt_path(assigns(:money_receipt))
  end

  test "should show money_receipt" do
    get :show, id: @money_receipt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @money_receipt
    assert_response :success
  end

  test "should update money_receipt" do
    put :update, id: @money_receipt, money_receipt: { dr_amt: @money_receipt.dr_amt }
    assert_redirected_to money_receipt_path(assigns(:money_receipt))
  end

  test "should destroy money_receipt" do
    assert_difference('MoneyReceipt.count', -1) do
      delete :destroy, id: @money_receipt
    end

    assert_redirected_to money_receipts_path
  end
end
