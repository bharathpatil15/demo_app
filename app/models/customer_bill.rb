class CustomerBill < ActiveRecord::Base
  attr_accessible :customer_id, :total_value
  belongs_to :customer, :foreign_key => "customer_id"
end
