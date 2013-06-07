class StandardComponentsController < ApplicationController
  # GET /standard_components
  # GET /standard_components.json
  def index
    @standard_components = StandardComponent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @standard_components }
    end
  end

  # GET /standard_components/1
  # GET /standard_components/1.json
  def show
    @standard_component = StandardComponent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @standard_component }
    end
  end

  # GET /standard_components/new
  # GET /standard_components/new.json
  def new
    @standard_component = StandardComponent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @standard_component }
    end
  end

  # GET /standard_components/1/edit
  def edit
    @standard_component = StandardComponent.find(params[:id])
  end

  # POST /standard_components
  # POST /standard_components.json
  def create
    @standard_component = StandardComponent.new(params[:standard_component])

    respond_to do |format|
      if @standard_component.save
        format.html { redirect_to @standard_component, notice: 'Standard component was successfully created.' }
        format.json { render json: @standard_component, status: :created, location: @standard_component }
      else
        format.html { render action: "new" }
        format.json { render json: @standard_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /standard_components/1
  # PUT /standard_components/1.json
  def update
    @standard_component = StandardComponent.find(params[:id])

    respond_to do |format|
      if @standard_component.update_attributes(params[:standard_component])
        format.html { redirect_to @standard_component, notice: 'Standard component was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @standard_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standard_components/1
  # DELETE /standard_components/1.json
  def destroy
    @standard_component = StandardComponent.find(params[:id])
    @standard_component.destroy

    respond_to do |format|
      format.html { redirect_to standard_components_url }
      format.json { head :no_content }
    end
  end
end
