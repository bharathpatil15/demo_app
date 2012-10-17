class Customer < ActiveRecord::Base
  attr_accessible :name, :number
  has_many :customer_bills

  before_destroy :check_for_bills

  private

  def check_for_bills
    if customer_bills.count > 0
     errors.add :base, "cannot delete customer while Bills exist"
      return false
    end
  end
end
