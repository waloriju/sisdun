class PersonEntitiesController < ApplicationController
  before_action :set_person_entity, only: [:show, :edit, :update, :destroy]

  # GET /person_entities
  # GET /person_entities.json
  def index
    @person_entities = PersonEntity.all
  end

  # GET /person_entities/1
  # GET /person_entities/1.json
  def show
  end

  # GET /person_entities/new
  def new
    @person_entity = PersonEntity.new
  end

  # GET /person_entities/1/edit
  def edit
  end

  # POST /person_entities
  # POST /person_entities.json
  def create
    @person_entity = PersonEntity.new(person_entity_params)

    respond_to do |format|
      if @person_entity.save
        format.html { redirect_to @person_entity, notice: 'Person entity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person_entity }
      else
        format.html { render action: 'new' }
        format.json { render json: @person_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_entities/1
  # PATCH/PUT /person_entities/1.json
  def update
    respond_to do |format|
      if @person_entity.update(person_entity_params)
        format.html { redirect_to @person_entity, notice: 'Person entity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_entities/1
  # DELETE /person_entities/1.json
  def destroy
    @person_entity.destroy
    respond_to do |format|
      format.html { redirect_to person_entities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_entity
      @person_entity = PersonEntity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_entity_params
      params.require(:person_entity).permit(:name, :trade_name, :cnpj)
    end
end
