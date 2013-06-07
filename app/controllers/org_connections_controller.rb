class OrgConnectionsController < ApplicationController
  # GET /org_connections
  # GET /org_connections.json
  def index
    @org_connections = OrgConnection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @org_connections }
    end
  end

  # GET /org_connections/1
  # GET /org_connections/1.json
  def show
    @org_connection = OrgConnection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @org_connection }
    end
  end

  # GET /org_connections/new
  # GET /org_connections/new.json
  def new
    @org_connection = OrgConnection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @org_connection }
    end
  end

  # GET /org_connections/1/edit
  def edit
    @org_connection = OrgConnection.find(params[:id])
  end

  # POST /org_connections
  # POST /org_connections.json
  def create
    @org_connection = OrgConnection.new(params[:org_connection])

    respond_to do |format|
      if @org_connection.save
        format.html { redirect_to @org_connection, notice: 'Org connection was successfully created.' }
        format.json { render json: @org_connection, status: :created, location: @org_connection }
      else
        format.html { render action: "new" }
        format.json { render json: @org_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /org_connections/1
  # PUT /org_connections/1.json
  def update
    @org_connection = OrgConnection.find(params[:id])

    respond_to do |format|
      if @org_connection.update_attributes(params[:org_connection])
        format.html { redirect_to @org_connection, notice: 'Org connection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @org_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_connections/1
  # DELETE /org_connections/1.json
  def destroy
    @org_connection = OrgConnection.find(params[:id])
    @org_connection.destroy

    respond_to do |format|
      format.html { redirect_to org_connections_url }
      format.json { head :no_content }
    end
  end
end
