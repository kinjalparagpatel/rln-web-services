class AssaysController < ApplicationController
  # GET /assays
  # GET /assays.json
  def index
    @assays = Assay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assays }
    end
  end

  # GET /assays/1
  # GET /assays/1.json
  def show
    @assay = Assay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assay }
    end
  end

  # GET /assays/new
  # GET /assays/new.json
  def new
    @assay = Assay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assay }
    end
  end

  # GET /assays/1/edit
  def edit
    @assay = Assay.find(params[:id])
  end

  # POST /assays
  # POST /assays.json
  def create
    @assay = Assay.new(params[:assay])

    respond_to do |format|
      if @assay.save
        format.html { redirect_to @assay, notice: 'Assay was successfully created.' }
        format.json { render json: @assay, status: :created, location: @assay }
      else
        format.html { render action: "new" }
        format.json { render json: @assay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assays/1
  # PUT /assays/1.json
  def update
    @assay = Assay.find(params[:id])

    respond_to do |format|
      if @assay.update_attributes(params[:assay])
        format.html { redirect_to @assay, notice: 'Assay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assays/1
  # DELETE /assays/1.json
  def destroy
    @assay = Assay.find(params[:id])
    @assay.destroy

    respond_to do |format|
      format.html { redirect_to assays_url }
      format.json { head :no_content }
    end
  end
end
