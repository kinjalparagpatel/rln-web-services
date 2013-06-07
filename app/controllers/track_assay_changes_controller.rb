class TrackAssayChangesController < ApplicationController
  # GET /track_assay_changes
  # GET /track_assay_changes.json
  def index
    @track_assay_changes = TrackAssayChange.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @track_assay_changes }
    end
  end

  # GET /track_assay_changes/1
  # GET /track_assay_changes/1.json
  def show
    @track_assay_change = TrackAssayChange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @track_assay_change }
    end
  end

  # GET /track_assay_changes/new
  # GET /track_assay_changes/new.json
  def new
    @track_assay_change = TrackAssayChange.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @track_assay_change }
    end
  end

  # GET /track_assay_changes/1/edit
  def edit
    @track_assay_change = TrackAssayChange.find(params[:id])
  end

  # POST /track_assay_changes
  # POST /track_assay_changes.json
  def create
    @track_assay_change = TrackAssayChange.new(params[:track_assay_change])

    respond_to do |format|
      if @track_assay_change.save
        format.html { redirect_to @track_assay_change, notice: 'Track assay change was successfully created.' }
        format.json { render json: @track_assay_change, status: :created, location: @track_assay_change }
      else
        format.html { render action: "new" }
        format.json { render json: @track_assay_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /track_assay_changes/1
  # PUT /track_assay_changes/1.json
  def update
    @track_assay_change = TrackAssayChange.find(params[:id])

    respond_to do |format|
      if @track_assay_change.update_attributes(params[:track_assay_change])
        format.html { redirect_to @track_assay_change, notice: 'Track assay change was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @track_assay_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /track_assay_changes/1
  # DELETE /track_assay_changes/1.json
  def destroy
    @track_assay_change = TrackAssayChange.find(params[:id])
    @track_assay_change.destroy

    respond_to do |format|
      format.html { redirect_to track_assay_changes_url }
      format.json { head :no_content }
    end
  end
end
