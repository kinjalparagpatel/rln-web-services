class OrderablesController < ApplicationController
  # GET /orderables
  # GET /orderables.json
  def index
    @orderables = Orderable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orderables }
    end
  end

  # GET /orderables/1
  # GET /orderables/1.json
  def show
    @orderable = Orderable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orderable }
    end
  end

  # GET /orderables/new
  # GET /orderables/new.json
  def new
    @orderable = Orderable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orderable }
    end
  end

  # GET /orderables/1/edit
  def edit
    @orderable = Orderable.find(params[:id])
  end

  # POST /orderables
  # POST /orderables.json
  def create
    @orderable = Orderable.new(params[:orderable])

    respond_to do |format|
      if @orderable.save
        format.html { redirect_to @orderable, notice: 'Orderable was successfully created.' }
        format.json { render json: @orderable, status: :created, location: @orderable }
      else
        format.html { render action: "new" }
        format.json { render json: @orderable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orderables/1
  # PUT /orderables/1.json
  def update
    @orderable = Orderable.find(params[:id])

    respond_to do |format|
      if @orderable.update_attributes(params[:orderable])
        format.html { redirect_to @orderable, notice: 'Orderable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orderable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderables/1
  # DELETE /orderables/1.json
  def destroy
    @orderable = Orderable.find(params[:id])
    @orderable.destroy

    respond_to do |format|
      format.html { redirect_to orderables_url }
      format.json { head :no_content }
    end
  end
end
