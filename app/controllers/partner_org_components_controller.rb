class PartnerOrgComponentsController < ApplicationController
  # GET /partner_org_components
  # GET /partner_org_components.json
  def index
    @partner_org_components = PartnerOrgComponent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partner_org_components }
    end
  end

  # GET /partner_org_components/1
  # GET /partner_org_components/1.json
  def show
    @partner_org_component = PartnerOrgComponent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partner_org_component }
    end
  end

  # GET /partner_org_components/new
  # GET /partner_org_components/new.json
  def new
    @partner_org_component = PartnerOrgComponent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partner_org_component }
    end
  end

  # GET /partner_org_components/1/edit
  def edit
    @partner_org_component = PartnerOrgComponent.find(params[:id])
  end

  # POST /partner_org_components
  # POST /partner_org_components.json
  def create
    @partner_org_component = PartnerOrgComponent.new(params[:partner_org_component])

    respond_to do |format|
      if @partner_org_component.save
        format.html { redirect_to @partner_org_component, notice: 'Partner org component was successfully created.' }
        format.json { render json: @partner_org_component, status: :created, location: @partner_org_component }
      else
        format.html { render action: "new" }
        format.json { render json: @partner_org_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partner_org_components/1
  # PUT /partner_org_components/1.json
  def update
    @partner_org_component = PartnerOrgComponent.find(params[:id])

    respond_to do |format|
      if @partner_org_component.update_attributes(params[:partner_org_component])
        format.html { redirect_to @partner_org_component, notice: 'Partner org component was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partner_org_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_org_components/1
  # DELETE /partner_org_components/1.json
  def destroy
    @partner_org_component = PartnerOrgComponent.find(params[:id])
    @partner_org_component.destroy

    respond_to do |format|
      format.html { redirect_to partner_org_components_url }
      format.json { head :no_content }
    end
  end
end
