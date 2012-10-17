class CustomerBillsController < ApplicationController
  # GET /customer_bills
  # GET /customer_bills.json
  def index
    @customer_bills = CustomerBill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_bills }
    end
  end

  # GET /customer_bills/1
  # GET /customer_bills/1.json
  def show
    @customer_bill = CustomerBill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_bill }
    end
  end

  # GET /customer_bills/new
  # GET /customer_bills/new.json
  def new
    @customer_bill = CustomerBill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_bill }
    end
  end

  # GET /customer_bills/1/edit
  def edit
    @customer_bill = CustomerBill.find(params[:id])
  end

  # POST /customer_bills
  # POST /customer_bills.json
  def create
    @customer_bill = CustomerBill.new(params[:customer_bill])

    respond_to do |format|
      if @customer_bill.save
        format.html { redirect_to @customer_bill, notice: 'Customer bill was successfully created.' }
        format.json { render json: @customer_bill, status: :created, location: @customer_bill }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_bills/1
  # PUT /customer_bills/1.json
  def update
    @customer_bill = CustomerBill.find(params[:id])

    respond_to do |format|
      if @customer_bill.update_attributes(params[:customer_bill])
        format.html { redirect_to @customer_bill, notice: 'Customer bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_bills/1
  # DELETE /customer_bills/1.json
  def destroy
    @customer_bill = CustomerBill.find(params[:id])
    @customer_bill.destroy

    respond_to do |format|
      format.html { redirect_to customer_bills_url }
      format.json { head :no_content }
    end
  end
end
