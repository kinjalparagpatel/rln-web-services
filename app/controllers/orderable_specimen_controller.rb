class OrderableSpecimenController < ApplicationController
  # GET /orderable_specimen
  # GET /orderable_specimen.json
  def index
    @orderable_specimen = OrderableSpeciman.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orderable_specimen }
    end
  end

  # GET /orderable_specimen/1
  # GET /orderable_specimen/1.json
  def show
    @orderable_speciman = OrderableSpeciman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orderable_speciman }
    end
  end

  # GET /orderable_specimen/new
  # GET /orderable_specimen/new.json
  def new
    @orderable_speciman = OrderableSpeciman.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orderable_speciman }
    end
  end

  # GET /orderable_specimen/1/edit
  def edit
    @orderable_speciman = OrderableSpeciman.find(params[:id])
  end

  # POST /orderable_specimen
  # POST /orderable_specimen.json
  def create
    @orderable_speciman = OrderableSpeciman.new(params[:orderable_speciman])

    respond_to do |format|
      if @orderable_speciman.save
        format.html { redirect_to @orderable_speciman, notice: 'Orderable speciman was successfully created.' }
        format.json { render json: @orderable_speciman, status: :created, location: @orderable_speciman }
      else
        format.html { render action: "new" }
        format.json { render json: @orderable_speciman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orderable_specimen/1
  # PUT /orderable_specimen/1.json
  def update
    @orderable_speciman = OrderableSpeciman.find(params[:id])

    respond_to do |format|
      if @orderable_speciman.update_attributes(params[:orderable_speciman])
        format.html { redirect_to @orderable_speciman, notice: 'Orderable speciman was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orderable_speciman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderable_specimen/1
  # DELETE /orderable_specimen/1.json
  def destroy
    @orderable_speciman = OrderableSpeciman.find(params[:id])
    @orderable_speciman.destroy

    respond_to do |format|
      format.html { redirect_to orderable_specimen_url }
      format.json { head :no_content }
    end
  end
end
