class CustomerLedgersController < ApplicationController
  # GET /customer_ledgers
  # GET /customer_ledgers.json
  def index
    @customer_ledgers = CustomerLedger.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_ledgers }
    end
  end

  # GET /customer_ledgers/1
  # GET /customer_ledgers/1.json
  def show
    @customer_ledger = CustomerLedger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_ledger }
    end
  end

  # GET /customer_ledgers/new
  # GET /customer_ledgers/new.json
  def new
    @customer_ledger = CustomerLedger.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_ledger }
    end
  end

  # GET /customer_ledgers/1/edit
  def edit
    @customer_ledger = CustomerLedger.find(params[:id])
  end

  # POST /customer_ledgers
  # POST /customer_ledgers.json
  def create
    @customer_ledger = CustomerLedger.new(params[:customer_ledger])

    respond_to do |format|
      if @customer_ledger.save
        format.html { redirect_to @customer_ledger, notice: 'Customer ledger was successfully created.' }
        format.json { render json: @customer_ledger, status: :created, location: @customer_ledger }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_ledgers/1
  # PUT /customer_ledgers/1.json
  def update
    @customer_ledger = CustomerLedger.find(params[:id])

    respond_to do |format|
      if @customer_ledger.update_attributes(params[:customer_ledger])
        format.html { redirect_to @customer_ledger, notice: 'Customer ledger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_ledgers/1
  # DELETE /customer_ledgers/1.json
  def destroy
    @customer_ledger = CustomerLedger.find(params[:id])
    @customer_ledger.destroy

    respond_to do |format|
      format.html { redirect_to customer_ledgers_url }
      format.json { head :no_content }
    end
  end
end
