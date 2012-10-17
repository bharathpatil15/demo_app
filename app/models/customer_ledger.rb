class CustomerLedger < ActiveRecord::Base
  attr_accessible :bill_amt, :customer_bill_id, :customer_id, :money_receipt_id, :total_amt
end
