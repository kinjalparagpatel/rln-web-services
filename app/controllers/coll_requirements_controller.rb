class CollRequirementsController < ApplicationController
  # GET /coll_requirements
  # GET /coll_requirements.json
  def index
    @coll_requirements = CollRequirement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coll_requirements }
    end
  end

  # GET /coll_requirements/1
  # GET /coll_requirements/1.json
  def show
    @coll_requirement = CollRequirement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coll_requirement }
    end
  end

  # GET /coll_requirements/new
  # GET /coll_requirements/new.json
  def new
    @coll_requirement = CollRequirement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coll_requirement }
    end
  end

  # GET /coll_requirements/1/edit
  def edit
    @coll_requirement = CollRequirement.find(params[:id])
  end

  # POST /coll_requirements
  # POST /coll_requirements.json
  def create
    @coll_requirement = CollRequirement.new(params[:coll_requirement])

    respond_to do |format|
      if @coll_requirement.save
        format.html { redirect_to @coll_requirement, notice: 'Coll requirement was successfully created.' }
        format.json { render json: @coll_requirement, status: :created, location: @coll_requirement }
      else
        format.html { render action: "new" }
        format.json { render json: @coll_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coll_requirements/1
  # PUT /coll_requirements/1.json
  def update
    @coll_requirement = CollRequirement.find(params[:id])

    respond_to do |format|
      if @coll_requirement.update_attributes(params[:coll_requirement])
        format.html { redirect_to @coll_requirement, notice: 'Coll requirement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coll_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coll_requirements/1
  # DELETE /coll_requirements/1.json
  def destroy
    @coll_requirement = CollRequirement.find(params[:id])
    @coll_requirement.destroy

    respond_to do |format|
      format.html { redirect_to coll_requirements_url }
      format.json { head :no_content }
    end
  end
end
