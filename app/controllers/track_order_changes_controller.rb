class TrackOrderChangesController < ApplicationController
  # GET /track_order_changes
  # GET /track_order_changes.json
  def index
    @track_order_changes = TrackOrderChange.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @track_order_changes }
    end
  end

  # GET /track_order_changes/1
  # GET /track_order_changes/1.json
  def show
    @track_order_change = TrackOrderChange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @track_order_change }
    end
  end

  # GET /track_order_changes/new
  # GET /track_order_changes/new.json
  def new
    @track_order_change = TrackOrderChange.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @track_order_change }
    end
  end

  # GET /track_order_changes/1/edit
  def edit
    @track_order_change = TrackOrderChange.find(params[:id])
  end

  # POST /track_order_changes
  # POST /track_order_changes.json
  def create
    @track_order_change = TrackOrderChange.new(params[:track_order_change])

    respond_to do |format|
      if @track_order_change.save
        format.html { redirect_to @track_order_change, notice: 'Track order change was successfully created.' }
        format.json { render json: @track_order_change, status: :created, location: @track_order_change }
      else
        format.html { render action: "new" }
        format.json { render json: @track_order_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /track_order_changes/1
  # PUT /track_order_changes/1.json
  def update
    @track_order_change = TrackOrderChange.find(params[:id])

    respond_to do |format|
      if @track_order_change.update_attributes(params[:track_order_change])
        format.html { redirect_to @track_order_change, notice: 'Track order change was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @track_order_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /track_order_changes/1
  # DELETE /track_order_changes/1.json
  def destroy
    @track_order_change = TrackOrderChange.find(params[:id])
    @track_order_change.destroy

    respond_to do |format|
      format.html { redirect_to track_order_changes_url }
      format.json { head :no_content }
    end
  end
end
