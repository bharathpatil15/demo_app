class CreateMoneyReceipts < ActiveRecord::Migration
  def change
    create_table :money_receipts do |t|
      t.float :dr_amt

      t.timestamps
    end
  end
end
