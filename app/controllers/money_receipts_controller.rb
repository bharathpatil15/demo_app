class MoneyReceiptsController < ApplicationController
  # GET /money_receipts
  # GET /money_receipts.json
  def index
    @money_receipts = MoneyReceipt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @money_receipts }
    end
  end

  # GET /money_receipts/1
  # GET /money_receipts/1.json
  def show
    @money_receipt = MoneyReceipt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @money_receipt }
    end
  end

  # GET /money_receipts/new
  # GET /money_receipts/new.json
  def new
    @money_receipt = MoneyReceipt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @money_receipt }
    end
  end

  # GET /money_receipts/1/edit
  def edit
    @money_receipt = MoneyReceipt.find(params[:id])
  end

  # POST /money_receipts
  # POST /money_receipts.json
  def create
    @money_receipt = MoneyReceipt.new(params[:money_receipt])

    respond_to do |format|
      if @money_receipt.save
        format.html { redirect_to @money_receipt, notice: 'Money receipt was successfully created.' }
        format.json { render json: @money_receipt, status: :created, location: @money_receipt }
      else
        format.html { render action: "new" }
        format.json { render json: @money_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /money_receipts/1
  # PUT /money_receipts/1.json
  def update
    @money_receipt = MoneyReceipt.find(params[:id])

    respond_to do |format|
      if @money_receipt.update_attributes(params[:money_receipt])
        format.html { redirect_to @money_receipt, notice: 'Money receipt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @money_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_receipts/1
  # DELETE /money_receipts/1.json
  def destroy
    @money_receipt = MoneyReceipt.find(params[:id])
    @money_receipt.destroy

    respond_to do |format|
      format.html { redirect_to money_receipts_url }
      format.json { head :no_content }
    end
  end
end
