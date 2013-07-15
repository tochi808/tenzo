#encoding: utf-8

class SaikensController < ApplicationController
  # GET /saikens
  # GET /saikens.json
  def index
    @saikens = Saiken.where(['customer_id = ?', params[:customer_id]]).all
    @customer = Customer.find(params[:customer_id])


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @saikens }
    end
  end

  # GET /saikens/1
  # GET /saikens/1.json
  def show
    @saiken = Saiken.find(params[:id])


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @saiken }
    end
  end

  # GET /saikens/new
  # GET /saikens/new.json
  def new
    @saiken = Saiken.new
    @customer = Customer.find(params[:customer_id])
    @creditors = Creditor.all

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /saikens/1/edit
  def edit
    @saiken = Saiken.find(params[:id])
    @customer = Customer.find(params[:customer_id])
    @creditors = Creditor.all
  end

  # POST /saikens
  # POST /saikens.json
  def create
    @saiken = Saiken.new(params[:saiken])
    @customer = Customer.find(params[:customer_id])

    @saiken.customer = @customer

    respond_to do |format|
      if @saiken.save
        format.html { redirect_to customer_saiken_url(@customer, @saiken), notice: 'Saiken was successfully created.' }
      else
        format.html do
          @customers = Customer.all
          @creditors = Creditor.all

          render action: "new" 
        end
      end
    end
  end

  # PUT /saikens/1
  # PUT /saikens/1.json
  def update
    @saiken = Saiken.find(params[:id])
    @customer = Customer.find(params[:customer_id])

    respond_to do |format|
      if @saiken.update_attributes(params[:saiken])
        format.html { redirect_to customer_saiken_url(@customer, @saiken), notice: 'Saiken was successfully updated.' }
      else
        format.html do 
          @customer = Customer.find(params[:customer_id])
          @creditors = Creditor.all
          render action: "edit" 
        end
      end
    end
  end

  # DELETE /saikens/1
  # DELETE /saikens/1.json
  def destroy
    @saiken = Saiken.find(params[:id])
    @saiken.destroy

    respond_to do |format|
      format.html { redirect_to customer_saikens_url(params[:customer_id]) }
    end
  end
end
