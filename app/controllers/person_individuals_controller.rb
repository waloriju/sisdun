class PersonIndividualsController < ApplicationController
  before_action :set_person_individual, only: [:show, :edit, :update, :destroy]

  # GET /person_individuals
  # GET /person_individuals.json
  def index
    @person_individuals = PersonIndividual.all
  end

  # GET /person_individuals/1
  # GET /person_individuals/1.json
  def show
  end

  # GET /person_individuals/new
  def new
    @person_individual = PersonIndividual.new
  end

  # GET /person_individuals/1/edit
  def edit
  end

  # POST /person_individuals
  # POST /person_individuals.json
  def create
    @person_individual = PersonIndividual.new(person_individual_params)

    respond_to do |format|
      if @person_individual.save
        format.html { redirect_to @person_individual, notice: 'Person individual was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person_individual }
      else
        format.html { render action: 'new' }
        format.json { render json: @person_individual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_individuals/1
  # PATCH/PUT /person_individuals/1.json
  def update
    respond_to do |format|
      if @person_individual.update(person_individual_params)
        format.html { redirect_to @person_individual, notice: 'Person individual was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person_individual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_individuals/1
  # DELETE /person_individuals/1.json
  def destroy
    @person_individual.destroy
    respond_to do |format|
      format.html { redirect_to person_individuals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_individual
      @person_individual = PersonIndividual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_individual_params
      params.require(:person_individual).permit(:name, :surname, :gender, :cpf, :birthdate)
    end
end
