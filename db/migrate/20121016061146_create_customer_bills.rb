class CreateCustomerBills < ActiveRecord::Migration
  def change
    create_table :customer_bills do |t|
      t.integer :customer_id
      t.integer :total_value

      t.timestamps
    end
  end
end
