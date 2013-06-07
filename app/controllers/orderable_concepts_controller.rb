class OrderableConceptsController < ApplicationController
  # GET /orderable_concepts
  # GET /orderable_concepts.json
  def index
    @orderable_concepts = OrderableConcept.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orderable_concepts }
    end
  end

  # GET /orderable_concepts/1
  # GET /orderable_concepts/1.json
  def show
    @orderable_concept = OrderableConcept.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orderable_concept }
    end
  end

  # GET /orderable_concepts/new
  # GET /orderable_concepts/new.json
  def new
    @orderable_concept = OrderableConcept.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orderable_concept }
    end
  end

  # GET /orderable_concepts/1/edit
  def edit
    @orderable_concept = OrderableConcept.find(params[:id])
  end

  # POST /orderable_concepts
  # POST /orderable_concepts.json
  def create
    @orderable_concept = OrderableConcept.new(params[:orderable_concept])

    respond_to do |format|
      if @orderable_concept.save
        format.html { redirect_to @orderable_concept, notice: 'Orderable concept was successfully created.' }
        format.json { render json: @orderable_concept, status: :created, location: @orderable_concept }
      else
        format.html { render action: "new" }
        format.json { render json: @orderable_concept.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orderable_concepts/1
  # PUT /orderable_concepts/1.json
  def update
    @orderable_concept = OrderableConcept.find(params[:id])

    respond_to do |format|
      if @orderable_concept.update_attributes(params[:orderable_concept])
        format.html { redirect_to @orderable_concept, notice: 'Orderable concept was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orderable_concept.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderable_concepts/1
  # DELETE /orderable_concepts/1.json
  def destroy
    @orderable_concept = OrderableConcept.find(params[:id])
    @orderable_concept.destroy

    respond_to do |format|
      format.html { redirect_to orderable_concepts_url }
      format.json { head :no_content }
    end
  end
end
