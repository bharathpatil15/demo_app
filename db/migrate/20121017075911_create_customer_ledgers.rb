class CreateCustomerLedgers < ActiveRecord::Migration
  def change
    create_table :customer_ledgers do |t|
      t.float :total_amt
      t.integer :customer_bill_id
      t.integer :customer_id
      t.integer :money_receipt_id
      t.float :bill_amt

      t.timestamps
    end
  end
end
