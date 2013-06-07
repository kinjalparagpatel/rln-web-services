class OrderableAssaysController < ApplicationController
  # GET /orderable_assays
  # GET /orderable_assays.json
  def index
    @orderable_assays = OrderableAssay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orderable_assays }
    end
  end

  # GET /orderable_assays/1
  # GET /orderable_assays/1.json
  def show
    @orderable_assay = OrderableAssay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orderable_assay }
    end
  end

  # GET /orderable_assays/new
  # GET /orderable_assays/new.json
  def new
    @orderable_assay = OrderableAssay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orderable_assay }
    end
  end

  # GET /orderable_assays/1/edit
  def edit
    @orderable_assay = OrderableAssay.find(params[:id])
  end

  # POST /orderable_assays
  # POST /orderable_assays.json
  def create
    @orderable_assay = OrderableAssay.new(params[:orderable_assay])

    respond_to do |format|
      if @orderable_assay.save
        format.html { redirect_to @orderable_assay, notice: 'Orderable assay was successfully created.' }
        format.json { render json: @orderable_assay, status: :created, location: @orderable_assay }
      else
        format.html { render action: "new" }
        format.json { render json: @orderable_assay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orderable_assays/1
  # PUT /orderable_assays/1.json
  def update
    @orderable_assay = OrderableAssay.find(params[:id])

    respond_to do |format|
      if @orderable_assay.update_attributes(params[:orderable_assay])
        format.html { redirect_to @orderable_assay, notice: 'Orderable assay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orderable_assay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderable_assays/1
  # DELETE /orderable_assays/1.json
  def destroy
    @orderable_assay = OrderableAssay.find(params[:id])
    @orderable_assay.destroy

    respond_to do |format|
      format.html { redirect_to orderable_assays_url }
      format.json { head :no_content }
    end
  end
end
