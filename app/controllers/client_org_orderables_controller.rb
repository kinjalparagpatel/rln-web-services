class ClientOrgOrderablesController < ApplicationController
  # GET /client_org_orderables
  # GET /client_org_orderables.json
  def index
    @client_org_orderables = ClientOrgOrderable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client_org_orderables }
    end
  end

  # GET /client_org_orderables/1
  # GET /client_org_orderables/1.json
  def show
    @client_org_orderable = ClientOrgOrderable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client_org_orderable }
    end
  end

  # GET /client_org_orderables/new
  # GET /client_org_orderables/new.json
  def new
    @client_org_orderable = ClientOrgOrderable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client_org_orderable }
    end
  end

  # GET /client_org_orderables/1/edit
  def edit
    @client_org_orderable = ClientOrgOrderable.find(params[:id])
  end

  # POST /client_org_orderables
  # POST /client_org_orderables.json
  def create
    @client_org_orderable = ClientOrgOrderable.new(params[:client_org_orderable])

    respond_to do |format|
      if @client_org_orderable.save
        format.html { redirect_to @client_org_orderable, notice: 'Client org orderable was successfully created.' }
        format.json { render json: @client_org_orderable, status: :created, location: @client_org_orderable }
      else
        format.html { render action: "new" }
        format.json { render json: @client_org_orderable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /client_org_orderables/1
  # PUT /client_org_orderables/1.json
  def update
    @client_org_orderable = ClientOrgOrderable.find(params[:id])

    respond_to do |format|
      if @client_org_orderable.update_attributes(params[:client_org_orderable])
        format.html { redirect_to @client_org_orderable, notice: 'Client org orderable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @client_org_orderable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_org_orderables/1
  # DELETE /client_org_orderables/1.json
  def destroy
    @client_org_orderable = ClientOrgOrderable.find(params[:id])
    @client_org_orderable.destroy

    respond_to do |format|
      format.html { redirect_to client_org_orderables_url }
      format.json { head :no_content }
    end
  end
end
